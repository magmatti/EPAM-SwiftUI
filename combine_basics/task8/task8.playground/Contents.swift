import Combine
import Foundation

final class Loader {
    @Published var isLoading: Bool = false
}

var bag = Set<AnyCancellable>()
let loader = Loader()

loader.$isLoading
    .removeDuplicates()
    .sink { value in
        print("isLoading changed to: ", value)
    }
    .store(in: &bag)

loader.isLoading = true

DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
    loader.isLoading = false
}
