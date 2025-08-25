import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var manager: TaskManager
    @State private var text = ""
    var body: some View {
        HStack {
            TextField("New task", text: $text)
                .textFieldStyle(.roundedBorder)
            Button("Add") {
                let t = text.trimmingCharacters(in: .whitespacesAndNewlines)
                guard !t.isEmpty else { return }
                manager.tasks.append(t)
                text = ""
            }
            .buttonStyle(.borderedProminent)
            .disabled(text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
        }
    }
}
