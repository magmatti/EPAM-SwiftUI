import Combine

let publisher = Future<String, Never> { promise in
    Task {
        try await Task.sleep(nanoseconds: 2_000_000_000)
        promise(.success("Hello Combine!"))
    }
}

var bag = Set<AnyCancellable>()

let cancellable: () = publisher
    .sink(
        receiveCompletion: { completion in
            print("Completion: \(completion)")
        },
        receiveValue: { value in
            print("Value: \(value)")
        }
    )
    .store(in: &bag)
