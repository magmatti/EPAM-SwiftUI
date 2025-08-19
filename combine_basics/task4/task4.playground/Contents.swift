import Combine

var integersSet = Set<AnyCancellable>()

let numbers = PassthroughSubject<Int, Never>()

numbers
    .filter { $0 % 2 == 0 }
    .sink { print($0) }
    .store(in: &integersSet)

numbers.send(20)
numbers.send(10)
numbers.send(30)
numbers.send(40)
numbers.send(11)
numbers.send(3)
