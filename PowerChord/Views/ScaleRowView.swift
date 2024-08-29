//
//  ScaleRowView.swift
//  PowerChord
//
//  Created by Vahan on 25/03/2024.
//

import SwiftUI

struct ScaleRowView: View {
    @Environment(\.colorScheme) var colorScheme
    
    let position: String
    let key: String
    let incrementation: String
    let mainChord: Bool
    
    private var chordColor = Color.black
    
    init(position: String, key: String, incrementation: String, mainChord: Bool) {
        self.position = position
        self.key = key
        self.incrementation = incrementation
        self.mainChord = mainChord
        if (mainChord) {
            chordColor = Color(red: 0, green: 0.51, blue: 1)
        }
    }
    
    var body: some View {
        HStack {
            Text(position)
                .font(.system(size: 20))
                .kerning(0.75)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.56, green: 0.54, blue: 0.54))
                .frame(width: 76, height: 67, alignment: .center)
            Text(key)
                .font(.system(size: 28))
                .kerning(1.6)
                .multilineTextAlignment(.center)
                .foregroundColor((colorScheme == .dark && !mainChord) ? .white : chordColor)
                .frame(width: 76, height: 67, alignment: .center)
                .padding(.horizontal, 40)
            Text(incrementation)
                .font(.system(size: 20))
                .kerning(0.7)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.56, green: 0.54, blue: 0.54))
                .frame(width: 76, height: 67, alignment: .center)
        }
    }
}

struct ScaleLine_Previews: PreviewProvider {
    static var previews: some View {
        let position = "1st"
        let key = "A"
        let incrementation = "+1"
        let mainChord = true
        ScaleRowView(position: position, key: key, incrementation: incrementation, mainChord: mainChord)
        ScaleRowView(position: position, key: key, incrementation: incrementation, mainChord: mainChord)
    }
}
