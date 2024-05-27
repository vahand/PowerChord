//
//  ChoiceRectangle.swift
//  PowerChord
//
//  Created by Vahan on 18/03/2024.
//

import SwiftUI

struct ChoiceRectangle: View {
    @Environment(\.colorScheme) var colorScheme
    
    let label: String
    let image: String
    
    init(label: String, image: String) {
        self.label = label
        self.image = image
    }
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: image)
                    .imageScale(.large)
                    .foregroundStyle(Color(red: 0, green: 0.51, blue: 1))
                    .padding(2)
                    .padding(.top)
                    .font(.system(size: 32))
                Text(label)
                    .padding(.bottom)
                    .font(Font.custom("SF Pro Text", size: 24))
                    .kerning(1.2)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0, green: 0.51, blue: 1))
            }
            Rectangle()
            .foregroundColor(.clear)
            .frame(width: 360, height: 115)
            .cornerRadius(10)
            .overlay(
            RoundedRectangle(cornerRadius: 10)
            .inset(by: 0.25)
            .stroke(Color(red: 0, green: 0.51, blue: 1), lineWidth: 0.5)
            )
        }
    }
}

#Preview {
    ChoiceRectangle(label: "Test", image: "globe")
}
