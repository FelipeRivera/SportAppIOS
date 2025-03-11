import SwiftUI

private struct Rutine: Identifiable {
    let id = UUID()
    let image: String
    let description: String
}

public struct RutinesView: View {
    public var body: some View {
        let rutines = generateRutines()
        VStack {
            HeaderComponent()
            Text("Rutinas")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 54)
            
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(rutines) { rutine in
                        CustomRectangularComponent(imageName: rutine.image, text: rutine.description)
                            .onTapGesture {
                                print("Ir a rutina seleccionada")
                            }
                    }
                }
                .padding()
                .padding(.bottom, 16)
            }
            .frame(height: 500)
            Spacer()
            CustomButton(title: "Volver", isActive: true) {
                print("Volver a menú")
            }
            .padding()
            .padding(.bottom, 50)
        }
        .ignoresSafeArea()
    }
    
    private func generateRutines() -> [Rutine] {
        let rutine1 = Rutine(image: "yoga", description: "Entrenamiento de yoga")
        let rutine2 = Rutine(image: "shoulda", description: "Entrenamiento de hombro")
        let rutine3 = Rutine(image: "power", description: "Entrenamiento de bíceps")
        let rutine4 = Rutine(image: "bici", description: "Entrenamiento de bici")
        let rutine5 = Rutine(image: "bench", description: "Entrenamiento de pecho")
        return [rutine1, rutine2, rutine3, rutine4, rutine5, rutine1, rutine2, rutine3]
    }
}

#Preview {
    RutinesView()
}

