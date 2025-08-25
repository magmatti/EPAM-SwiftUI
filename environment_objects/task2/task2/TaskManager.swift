import Foundation

final class TaskManager: ObservableObject {
    @Published var tasks: [String] = []
}
