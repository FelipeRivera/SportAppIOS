import SwiftUI

struct RealTimeView: View {
    var body: some View {
        VStack {
            HeaderComponent()
            Text("Seguimiento a tiempo real")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top, 44)
                .padding(.horizontal, 34)
            PickerTextField(fieldName: "",
                            options: ["Intenso", "Suave", "Equilibrado"]).padding()
                .padding(.horizontal, 44)
                .padding(.top, 14)
            CustomCircularButton(title: "Empezar",
                                 isActive: true) {
                print("Ir a empezar rutina")
            }.padding()
                .padding(.top, 54)
            CustomButton(title: "Volver", isActive: true) {
                print("Ir atras")
            }
            .padding()
            .padding(.horizontal)
            .padding(.top, 100)
            Spacer()
        }.ignoresSafeArea()
    }
}

#Preview {
    RealTimeView()
}