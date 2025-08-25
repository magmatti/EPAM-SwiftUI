import SwiftUI

struct TaskListView: View {
    @EnvironmentObject var manager: TaskManager
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Tasks")
                .font(.title2).bold()
            List(manager.tasks, id: \.self) { task in
                Text(task)
            }
            .frame(minHeight: 200)
        }
    }
}
