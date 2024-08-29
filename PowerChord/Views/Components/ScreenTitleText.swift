//
//  TitleView.swift
//  PowerChord
//
//  Created by Vahan on 18/03/2024.
//

import SwiftUI

struct TitleView: View {
    @Environment(\.colorScheme) var colorScheme
    
    let title: String
    init(title: String) {
        self.title = title
    }
    var body: some View {
        VStack {
            Text(title)
                .font(Font.custom("SF Pro Text", size: 40))
                .kerning(2) // is for letters spacing
                .multilineTextAlignment(.center)
                .foregroundStyle(colorScheme == .dark ? Color(red: 0.878, green: 0.878, blue: 0.878) : Color(red: 0.56, green: 0.54, blue: 0.54))
        }
    }
}

#Preview {
    TitleView(title: "PowerChord")
}
