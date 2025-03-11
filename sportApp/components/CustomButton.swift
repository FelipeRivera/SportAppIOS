import SwiftUI

struct CustomButton: View {
    let title: String
    let isActive: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity,
                       minHeight: 50)
                .background(Color(hex: "007AFF"))
                .cornerRadius(15)
                .shadow(color: Color.gray.opacity(0.5), radius: 4, x: 0, y: 4)
        }
        .opacity(isActive ? 1.0 : 0.5)
        .disabled(!isActive)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            CustomButton(title: "Enviar", isActive: true) {
                print("Botón activo pulsado")
            }
            CustomButton(title: "Enviar", isActive: false) {
                print("Botón inactivo pulsado")
            }
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
