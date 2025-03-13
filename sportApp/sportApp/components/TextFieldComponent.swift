import SwiftUI

public struct CustomTextField: View {
    let fieldName: String
    @Binding var text: String
    @FocusState private var isFocused: Bool
    @State private var touched: Bool = false
    
    private var borderColor: Color {
        if touched && text.isEmpty {
            return Color(hex: "FF0505")
        } else if !text.isEmpty {
            return Color(hex: "007AFF")
        } else {
            return Color(hex: "3A3A3C")
        }
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 4)
                    .stroke(borderColor, lineWidth: 1)
                    .frame(height: 50)
                TextField("", text: $text)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .focused($isFocused)
                    .onChange(of: isFocused) { focused in
                        if !focused {
                            touched = true
                        }
                    }
                
                Text(fieldName)
                    .font(.caption)
                    .foregroundColor(borderColor)
                    .background(Color.white)
                    .padding(.horizontal, 4)
                    .offset(x: 20, y: -30)
            }
            
            if touched && text.isEmpty {
                Text("El campo es obligatorio")
                    .font(.caption)
                    .foregroundColor(.red)
                    .padding(.leading, 16)
            }
        }
        .padding(.vertical, 8)
        .onTapGesture {
            touched = true
        }
    }
}

struct CustomTextFieldPreviewWrapper: View {
    @State private var text: String = ""
    
    var body: some View {
        CustomTextField(fieldName: "Prueba",
                        text: $text)
        .padding()
    }
}

#Preview {
    CustomTextFieldPreviewWrapper()
}
