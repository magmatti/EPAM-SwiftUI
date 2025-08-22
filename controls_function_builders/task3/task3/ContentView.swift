import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 16) {
            Circle()
                .fill(Color.gray.opacity(0.3))
                .frame(width: 60, height: 60)
                .overlay(
                    Image(systemName: "person.fill")
                        .foregroundColor(.gray)
                        .font(.system(size: 24))
                )
            
            VStack(alignment: .leading, spacing: 4) {
                Text("John Doe")
                    .font(.headline)
                
                Text("Software Developer")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
