import SwiftUI

struct SummaryView: View {
    var body: some View {
        VStack {
            HeaderComponent()
            Text("Resumen de entrenamiento")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top, 44)
                .padding(.horizontal, 24)
            PickerTextField(fieldName: "Entrenamiento",
                            options: ["Pecho", "Hombro", "Yoga"]).padding()
                .padding(.leading, 8)
                .padding(.trailing, 74)
                .padding(.top, 34)
            Text("La última vez que realizaste este entrenamiento, lograste 20 repeticiones en 1 minuto y 30 segundos.").font(.caption)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .padding(.horizontal, 8)
                .padding(.top, 34)
            Image("bench").resizable()
                .frame(width: 158, height: 158)
                .padding()
                .padding(.top, 34)
            CustomButton(title: "Volver", isActive: true) {
                print("Ir atras")
            }
            .padding()
            .padding(.horizontal)
            .padding(.top, 24)
            Spacer()
        }.ignoresSafeArea()
    }
}

#Preview {
    SummaryView()
}