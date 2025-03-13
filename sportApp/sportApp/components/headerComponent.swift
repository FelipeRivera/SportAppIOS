import SwiftUI

public struct HeaderComponent: View {
    public var body: some View {
        ZStack{
            Image("header")
                .resizable()
                .imageScale(.large)
                .frame(width: .infinity,
                       height: 100)
                .padding(.horizontal, 2)
            HStack {
                Text("SportApp")
                    .font(.caption)
                    .fontWeight(.bold)
                    .padding(.leading, 28)
                    .padding(.top, 80)
                Spacer()
                Image("user")
                    .resizable()
                    .frame(width: 28,
                           height: 28)
                    .scaledToFit()
                    .padding(.trailing, 50)
                    .padding(.top, 80)
                    .onTapGesture {
                        print("Log out")
                    }
            }
        }
    }
}

#Preview {
    HeaderComponent()
}
