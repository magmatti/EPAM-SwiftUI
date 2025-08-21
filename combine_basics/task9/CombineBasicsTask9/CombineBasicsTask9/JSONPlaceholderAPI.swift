import Foundation
import Combine

protocol PostsAPI {
    func fetchPosts() -> AnyPublisher<[Post], Error>
}

final class JSONPlaceholderAPI: PostsAPI {
    
    private let baseURL = URL(string: "https://jsonplaceholder.typicode.com")!
    
    func fetchPosts() -> AnyPublisher<[Post], any Error> {
        let url = baseURL.appendingPathComponent("posts")
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { output in
                guard let response = output.response as? HTTPURLResponse,
                      200..<300 ~= response.statusCode else {
                    throw URLError(.badServerResponse)
                }
                return output.data
            }
            .decode(type: [Post].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
