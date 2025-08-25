import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 24) {
            Text("Home")
                .font(.largeTitle).bold()
            Text("Welcome to My App")
        }
        .padding()
        .navigationTitle("My App")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink {
                    SettingsView()
                } label: {
                    Image(systemName: "gearshape.fill")
                }
            }
        }
        .toolbarBackground(Color.indigo, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarColorScheme(.light, for: .navigationBar)
    }
}
