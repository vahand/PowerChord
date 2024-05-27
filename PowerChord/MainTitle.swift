//
//  MainTitle.swift
//  PowerChord
//
//  Created by Vahan on 18/03/2024.
//

import SwiftUI

struct MainTitle: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            Text("WELCOME ON")
            .font(
            Font.custom("SF Pro Text", size: 16)
            .weight(.light)
            )
            .kerning(4.8)
            .multilineTextAlignment(.center)
            .foregroundColor(colorScheme == .dark ? Color(red: 0.56, green: 0.54, blue: 0.54) : Color(red: 0.26, green: 0.25, blue: 0.25))
            .frame(width: 168, height: 19, alignment: .center)
            Text("POWER\nCHORD")
            .font(Font.custom("SF Pro Text", size: 40))
            .kerning(2) // is for letters spacing
            .multilineTextAlignment(.center)
            .foregroundColor(colorScheme == .dark ? Color(red: 0.878, green: 0.878, blue: 0.878) : Color(red: 0.56, green: 0.54, blue: 0.54))

            .frame(width: 314, height: 111, alignment: .center)
        }
        .padding(.bottom, 80.0)
    }
}

#Preview {
    MainTitle()
}
