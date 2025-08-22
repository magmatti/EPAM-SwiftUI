import SwiftUI

struct ContentView: View {
    
    @State private var user = UserModel(
        name: "John Doe",
        age: 24,
        location: "Cracow",
        isPremium: true
    )
    
    var body: some View {
        VStack {
            ProfileDetailView(user: user)
            Divider().padding(.vertical)
            
            Toggle("Premium", isOn: $user.isPremium)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
