import SwiftUI

public struct MenuView: View {
    public var body: some View {
        VStack {
            HeaderComponent()
            Image("clock")
                .resizable()
                .frame(width: 158,
                       height: 158,
                       alignment: .center)
                .padding()
            CustomButton(title: "Configuración de rutinas y alarmas",
                         isActive: true) {
                print("Ir a configuracion de rutinas")
            }.padding()
            CustomButton(title: "Crear rutina",
                         isActive: true) {
                print("Ir a crear rutina")
            }.padding()
            CustomButton(title: "Rutinas",
                         isActive: true) {
                print("Ir a rutinas")
            }.padding()
            CustomButton(title: "Estadísticas",
                         isActive: true) {
                print("Ir a estadisticas")
            }.padding()
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    MenuView()
}
