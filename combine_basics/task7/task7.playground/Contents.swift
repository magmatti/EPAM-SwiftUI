import Combine

class ButtonViewModel {
    
    let buttonPressed = PassthroughSubject<Void, Never>()
    
    var bag = Set<AnyCancellable>()
    
    private(set) var buttonPressedCount = 0
    
    init() {
        buttonPressed
            .sink { [weak self] in
                guard let self = self else { return }
                self.buttonPressedCount += 1
                print("Button pressed: \(self.buttonPressedCount) times!")
            }
            .store(in: &bag)
    }
}

let viewModel = ButtonViewModel()

viewModel.buttonPressed.send(())
viewModel.buttonPressed.send(())
viewModel.buttonPressed.send(())
viewModel.buttonPressed.send(())
viewModel.buttonPressed.send(())
