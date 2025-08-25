import SwiftUI

struct ParentView: View {
    @State private var isOn = false

    var body: some View {
        VStack(spacing: 16) {
            Text(isOn ? "On" : "Off")
                .font(.title2).bold()
            ChildToggleView(isOn: $isOn)
        }
        .padding()
    }
}

struct ChildToggleView: View {
    @Binding var isOn: Bool

    var body: some View {
        Toggle("Control from Child", isOn: $isOn)
            .padding(.horizontal)
    }
}

#Preview {
    ParentView()
}
