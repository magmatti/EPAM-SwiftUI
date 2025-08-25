import SwiftUI

struct RemoveTaskView: View {
    @EnvironmentObject var manager: TaskManager
    @State private var indexText = ""
    var body: some View {
        HStack {
            TextField("Index", text: $indexText)
                .keyboardType(.numberPad)
                .textFieldStyle(.roundedBorder)
                .frame(width: 100)
            Button("Remove") {
                let trimmed = indexText.trimmingCharacters(in: .whitespacesAndNewlines)
                guard let i = Int(trimmed), manager.tasks.indices.contains(i) else { return }
                manager.tasks.remove(at: i)
                indexText = ""
            }
            .buttonStyle(.bordered)
            .disabled({
                let trimmed = indexText.trimmingCharacters(in: .whitespacesAndNewlines)
                guard let i = Int(trimmed) else { return true }
                return !manager.tasks.indices.contains(i)
            }())
        }
    }
}
