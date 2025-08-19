import Combine

let namePublisher = Just("john")
let surnamePublisher = Just("doe")

let transformedNamePublisher = namePublisher
    .map { $0.uppercased() }

let transformedSurnamePublisher = surnamePublisher
    .map { $0.lowercased() }

let fullNamePublisher = transformedNamePublisher
    .zip(transformedSurnamePublisher) { name, surname in
        return "\(name) \(surname)"
    }

var cancellables = Set<AnyCancellable>()

fullNamePublisher
    .sink { print($0) }
    .store(in: &cancellables)
