import SwiftUI

public struct MenuView: View {
    @State private var shouldShowSummary: Bool = false
    @State private var shouldShowRutines: Bool = false
    @State private var shouldShowRealTime: Bool = false
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
                shouldShowRealTime = true
            }.padding()
            CustomButton(title: "Crear rutina",
                         isActive: true) {
                print("Ir a crear rutina")
            }.padding()
            CustomButton(title: "Rutinas",
                         isActive: true) {
                print("Ir a rutinas")
                shouldShowRutines = true
            }.padding()
            CustomButton(title: "Estadísticas",
                         isActive: true) {
                print("Ir a estadisticas")
                shouldShowSummary = true
            }.padding()
            NavigationLink(destination: SummaryView(), isActive: $shouldShowSummary) {
                EmptyView()
            }
            NavigationLink(destination: RealTimeView(), isActive: $shouldShowRealTime) {
                EmptyView()
            }
            NavigationLink(destination: RutinesView(), isActive: $shouldShowRutines) {
                EmptyView()
            }
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    MenuView()
}
