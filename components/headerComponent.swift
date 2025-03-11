//
//  headerComponent.swift
//  sportApp
//
//  Created by Felipe Rivera on 10/03/25.
//

import SwiftUI

public struct HeaderComponent: View {
    public var body: some View {
        ZStack{
            Image("header")
                .resizable()
                .imageScale(.small)
                .frame(width: .infinity,
                       height: 65)
                .padding(.horizontal, 2)
            HStack {
                Text("SportApp")
                    .font(.caption)
                    .fontWeight(.bold)
                    .padding(.leading, 28)
                Spacer()
                Image("user")
                    .resizable()
                    .frame(width: 18,
                           height: 18)
                    .scaledToFit()
                    .padding(.trailing, 50)
            }
        }
    }
}

#Preview {
    HeaderComponent()
}
