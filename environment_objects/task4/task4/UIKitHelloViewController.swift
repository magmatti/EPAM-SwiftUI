import UIKit

final class UIKitHelloViewController: UIViewController {
    private let label: UILabel = {
        let l = UILabel()
        l.text = "Hello, from UIKit!"
        l.textAlignment = .center
        l.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .secondarySystemBackground
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
