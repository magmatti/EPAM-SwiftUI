import Foundation
import SwiftUI

@main
struct EnvCounterApp: App {
    @StateObject private var counter = Counter()
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(counter)
        }
    }
}
