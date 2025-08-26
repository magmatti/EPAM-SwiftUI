import UIKit
import SwiftUI

class ViewController: UIViewController {
    private let button: UIButton = {
        let b = UIButton(type: .system)
        b.setTitle("Show SwiftUI", for: .normal)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "UIKit Home"
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        button.addTarget(self, action: #selector(showSwiftUI), for: .touchUpInside)
    }

    @objc private func showSwiftUI() {
        let host = UIHostingController(rootView: EmbeddedView())
        navigationController?.pushViewController(host, animated: true)
    }
}
