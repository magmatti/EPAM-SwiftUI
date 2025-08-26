import SwiftUI
import UIKit

struct UIKitHelloRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIKitHelloViewController {
        UIKitHelloViewController()
    }

    func updateUIViewController(_ uiViewController: UIKitHelloViewController, context: Context) {}
}
