import SwiftUI

@main
struct task2App: App {
    @StateObject private var manager = TaskManager()
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(manager)
        }
    }
}
