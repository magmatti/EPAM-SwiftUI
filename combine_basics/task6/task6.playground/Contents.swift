import Combine

var bag = Set<AnyCancellable>()
let numbers = PassthroughSubject<Int, Never>()

numbers
    .flatMap { value in
        Just(value * value)
    }
    .sink {squared in
        print("Squared: ", squared)
    }
    .store(in: &bag)

numbers.send(2)
numbers.send(4)
numbers.send(6)
