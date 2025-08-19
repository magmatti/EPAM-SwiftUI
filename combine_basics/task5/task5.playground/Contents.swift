import Combine
import Foundation

var bag = Set<AnyCancellable>()

let textInput = PassthroughSubject<String, Never>()

textInput
    .debounce(for: .milliseconds(300), scheduler: RunLoop.main)
    .sink { value in
        print("Output: ", value)
    }
    .store(in: &bag)

let keystrokes = ["H", "He", "Hel", "Hell", "Hello"]

for (i, token) in keystrokes.enumerated() {
    DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(500 * i)) {
        textInput.send(token)
    }
}
