import SwiftUI

struct ContentView: View {
    
    @State private var isOn = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                CardView(title: "Some Text") {
                    Text("This is an example text inside of my card")
                        .font(.subheadline)
                    
                }
                
                CardView(title: "Profile") {
                    HStack(spacing: 12) {
                        Circle()
                            .fill(.blue.opacity(0.2))
                            .frame(width: 48, height: 48)
                            .overlay(Image(systemName: "person.fill"))
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("John Doe").font(.headline)
                            Text("Software Developer").font(.subheadline)
                        }
                    }
                }
                
                CardView(title: "Settings") {
                    VStack(alignment: .leading, spacing: 8) {
                        Toggle("Setting 1", isOn: $isOn)
                        Button("Setting 2") {
                            print("Button tapped, isOn = \(isOn)")
                        }
                        .buttonStyle(.borderless)
                    }
                }
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    ContentView()
}
