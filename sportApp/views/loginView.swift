import SwiftUI

public struct loginView: View {
    @State private var user = ""
    @State private var password = ""
    
    public var body: some View {
        VStack {
            HeaderComponent()
            Text("Inicio de sesión")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 74)
            CustomTextField(fieldName: "Usuario",
                            text: $user)
            .padding(.horizontal, 24)
            .padding(.top, 24)
            CustomTextField(fieldName: "Contraseña",
                            text: $password)
            .padding(.horizontal, 24)
            .padding(.top, 24)
            
            CustomButton(title: "Iniciar sesión",
                         isActive: !user.isEmpty && !password.isEmpty) {
                print("Iniciar session")
            }.padding()
            SocialButton(title: "Ingresar con Google",
                         imageName: "google") {
                print("Iniciar session con google")
            }
                         .padding(.horizontal)
                         .padding(.top, 50)
            SocialButton(title: "Ingresar con Apple id",
                         imageName: "apple") {
                print("Iniciar session con google")
            }
                         .padding()
            Text("Registro por correo")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(Color(hex: "007AFF"))
                .underline()
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    loginView()
}
