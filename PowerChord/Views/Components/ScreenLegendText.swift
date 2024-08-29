//
//  LegendText.swift
//  PowerChord
//
//  Created by Vahan on 15/04/2024.
//

import SwiftUI

struct LegendText: View {
    @Environment(\.colorScheme) var colorScheme
    
    let legend: String
    
    init(legend: String) {
        self.legend = legend
    }
    
    var body: some View {
        Text(self.legend)
        .font(
        Font.custom("SF Pro Text", size: 12)
        .weight(.light)
        )
        .kerning(4.8)
        .multilineTextAlignment(.center)
        .foregroundColor(colorScheme == .dark ? Color(red: 0.56, green: 0.54, blue: 0.54) : Color(red: 0.26, green: 0.25, blue: 0.25))
        .frame(width: 200, height: 19, alignment: .center)
    }
}

#Preview {
    LegendText(legend: "by Vahan Ducher")
}
