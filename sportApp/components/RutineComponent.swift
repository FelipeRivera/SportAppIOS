import SwiftUI

public struct CustomRectangularComponent: View {
    let imageName: String
    let text: String
    
    public var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(imageName)
                .resizable()
                .frame(width: 60, height: 60)
                .aspectRatio(contentMode: .fit)
            
            Text(text)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .center)
        }
        .padding(.horizontal, 16)
        .frame(height: 110)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color(hex: "C5C6D0"), lineWidth: 3)
        )
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.clear)
        )
    }
}

struct CustomRectangularComponent_Previews: PreviewProvider {
    static var previews: some View {
        CustomRectangularComponent(imageName: "apple",
                                   text: "Este es un ejemplo de texto que puede ocupar hasta dos líneas y se centra en el contenedor.")
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
