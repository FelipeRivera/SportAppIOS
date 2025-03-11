import SwiftUI

struct PickerTextField: View {
    let fieldName: String
    let placeholder: String = "Seleccione una opción"
    let options: [String]
    @State var selectedOption = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(fieldName)
                .font(.caption)
                .foregroundColor(.black)
            Menu {
                ForEach(options, id: \.self) { option in
                    Button {
                        selectedOption = option
                    } label: {
                        Text(option)
                    }
                }
            } label: {
                HStack {
                    Text(selectedOption.isEmpty ? placeholder : selectedOption)
                        .foregroundColor(selectedOption.isEmpty ? .gray : .black)
                    Spacer()
                    Image(systemName: "chevron.down")
                        .foregroundColor(.black)
                        .font(.caption)
                }
                .padding(.horizontal, 8)
                .frame(height: 50)
                .background(Color.white)
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.black),
                    alignment: .bottom
                )
                .id(selectedOption)
            }
        }
    }
}

struct PickerTextField_Previews: PreviewProvider {
    static var previews: some View {
        let options = ["Intenso", "Suave", "Equilibrado"]
        PickerTextField(fieldName: "Nivel",
                        options: options)
        .padding()
        .previewLayout(.sizeThatFits)
    }
}