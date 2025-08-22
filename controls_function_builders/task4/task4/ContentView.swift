import SwiftUI

struct ContentView: View {
    @State private var darkMode = false
    
    var body: some View {
        ZStack {
            (darkMode ? Color.black : Color.white)
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Toggle(isOn: $darkMode) {
                    Text("Dark Mode")
                        .foregroundColor(darkMode ? .white : .black)
                }
                .toggleStyle(ColorChangingToggleStyle())
                
                Text(darkMode ? "Dark mode on" : "Dark mode off")
                    .foregroundColor(darkMode ? .white : .black)
                    .font(.title)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
