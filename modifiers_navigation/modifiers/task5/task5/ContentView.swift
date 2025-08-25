import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 32) {
            Text("SwiftUI is amazing!")
                .font(.title2)
                .padding(12)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.gray.opacity(0.25))
                )
                .overlay(
                    Circle()
                        .fill(Color.black.opacity(0.2))
                        .frame(width: 140, height: 140)
                )

            Text("SwiftUI is amazing!")
                .font(.largeTitle).bold()
                .lineLimit(1)
                .padding(.horizontal, 40)
                .frame(width: 160, height: 160)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.gray.opacity(0.4), lineWidth: 1)
                )

            Text("SwiftUI is amazing!")
                .font(.title2)
                .lineLimit(1)
                .offset(x: -20)
                .frame(width: 140, height: 140)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.blue.opacity(0.4), lineWidth: 1)
                )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
