import SwiftUI

struct CustomCircularButton: View {
    let title: String
    let isActive: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .frame(width: 173, height: 173)
                .background(Color(hex: "007AFF"))
                .clipShape(Circle())
                .shadow(color: Color.gray.opacity(0.5), radius: 4, x: 0, y: 4)
        }
        .opacity(isActive ? 1.0 : 0.5)
        .disabled(!isActive)
    }
}

struct CustomCircularButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            CustomCircularButton(title: "OK", isActive: true) {
                print("Botón activo pulsado")
            }
            CustomCircularButton(title: "OK", isActive: false) {
                print("Botón inactivo pulsado")
            }
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
