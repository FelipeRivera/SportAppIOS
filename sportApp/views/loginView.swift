import SwiftUI

public struct loginView: View {
    @State private var user = ""
    @State private var password = ""
    @State private var shouldNavigate = false
    
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
                shouldNavigate = true
            }.padding()
            
            NavigationLink(destination: MenuView(), isActive: $shouldNavigate) {
                            EmptyView()
                        }
            
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
                .onTapGesture {
                    print("Ir a registro por correo")
                }
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    loginView()
}
