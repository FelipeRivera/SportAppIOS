import SwiftUI
import AudioToolbox

struct RoundView: View {
    private let maxRounds = 4
    @State private var remainingTime: Int = 10
    @State private var round: Int = 1
    @State private var showRoutineFinished: Bool = false
    @State private var routineComplete: Bool = false
    @State private var timer: Timer?
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderComponent()
            Text("Ronda #\(round)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Text("Press Banca")
                .font(.title3)
                .fontWeight(.bold)
                .padding()
            Image("bench")
                .resizable()
                .frame(width: 158, height: 158)
                .padding()
            Text("Tiempo Restante")
                .font(.title3)
                .fontWeight(.bold)
                .padding()
            Text("00:\(remainingTime)")
                .font(.title)
                .fontWeight(.bold)
            if showRoutineFinished || routineComplete {
                if routineComplete {
                    Text("¡Rutina completada!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: "1C1C1E"))
                        .padding()
                } else {
                    Text("Ronda Terminada!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: "1C1C1E"))
                        .padding(.top, 14)
                        .onTapGesture {
                            continueRoutine()
                        }
                    Text("Toca para continuar")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: "1C1C1E"))
                        .padding(.top, 0)
                        .onTapGesture {
                            continueRoutine()
                        }
                }
            }
            Spacer()
            CustomButton(title: "Volver", isActive: true) {
                print("Ir atras")
            }
            .padding()
            .padding(.horizontal)
            .padding(.bottom, 80)
        }
        .ignoresSafeArea()
        .onAppear {
            startTimer()
        }
    }
    
    func startTimer() {
        remainingTime = 10
        showRoutineFinished = false
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if remainingTime > 0 {
                remainingTime -= 1
            } else {
                timer.invalidate()
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
                if round < maxRounds {
                    showRoutineFinished = true
                } else {
                    routineComplete = true
                }
            }
        }
    }
    
    func continueRoutine() {
        if round < maxRounds {
            round += 1
            startTimer()
        }
    }
}

#Preview {
    RoundView()
}