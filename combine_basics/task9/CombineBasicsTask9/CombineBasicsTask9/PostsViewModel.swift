import Combine
import Foundation

final class PostsViewModel {
    
    @Published private(set) var posts: [Post] = []
    @Published private(set) var errorMessage: String? = nil
    
    private var bag = Set<AnyCancellable>()
    private let api: PostsAPI
    
    init(api: PostsAPI = JSONPlaceholderAPI()) {
        self.api = api
    }
    
    func load() {
        api.fetchPosts()
            .receive(on: DispatchQueue.main)
            .retry(1)
            .sink(
                receiveCompletion: { [weak self] completion in
                    if case .failure(let error) = completion {
                        self?.errorMessage = error.localizedDescription
                    }
                },
                receiveValue: { [weak self] posts in
                    self?.posts = posts
                }
            )
            .store(in: &bag)
    }
}
