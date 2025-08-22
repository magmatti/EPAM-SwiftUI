import SwiftUI

struct GreetingView: View {
    
    @State private var showGreeting = false
    
    var body: some View {
        VStack(spacing: 20) {
            Toggle("Show greeting", isOn: $showGreeting)
                .padding()
            
            // done with opacity so the toggle doesnt move up when text appears
            Text("Hello, SwiftUI!")
                .font(.title)
                .foregroundColor(.blue)
                .opacity(showGreeting ? 1 : 0)
        }
    }
}

#Preview {
    GreetingView()
}
