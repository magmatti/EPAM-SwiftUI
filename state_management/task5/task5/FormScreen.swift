import SwiftUI


struct FormScreen: View {
    @Bindable var form: FormModel
    
    init(form: FormModel) {
        self.form = form
    }
    
    var body: some View {
        VStack(spacing: 16) {
            TextField("Username", text: $form.username)
                .textFieldStyle(.roundedBorder)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
            
            Button("Submit") {}
                .buttonStyle(.borderedProminent)
                .disabled(form.username.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
        }
        .padding()
    }
}
