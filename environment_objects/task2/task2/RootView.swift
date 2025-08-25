import SwiftUI

struct RootView: View {
    var body: some View {
        VStack(spacing: 24) {
            TaskListView()
            AddTaskView()
            RemoveTaskView()
        }
        .padding()
    }
}
