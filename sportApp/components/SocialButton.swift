import SwiftUI

struct SocialButton: View {
    let title: String
    let imageName: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color(hex: "1C1C1E"), lineWidth: 1)
                    .background(RoundedRectangle(cornerRadius: 4).fill(Color.clear))
                Text(title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hex: "007AFF"))
                    .multilineTextAlignment(.center)
                HStack {
                    Image(imageName)
                        .padding(.leading, 24)
                    Spacer()
                }
            }
            .frame(height: 50)
        }
    }
}

struct CustomRectangularButton_Previews: PreviewProvider {
    static var previews: some View {
        SocialButton(title: "Mi Botón", imageName: "apple") {
            print("Botón pulsado")
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
