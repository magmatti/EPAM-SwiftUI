import SwiftUI

struct ContentView: View {
    @State private var form = FormModel()

    var body: some View {
        FormScreen(form: form)
    }
}

#Preview {
    ContentView()
}
