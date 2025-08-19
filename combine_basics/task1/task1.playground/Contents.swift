import Combine

let publisher = Just("Hello Combine!")

let cancellable = publisher
    .sink(
        receiveCompletion: { completion in
            print("Completion: \(completion)")
        },
        receiveValue: { value in
            print("Value: \(value)")
        }
    )

