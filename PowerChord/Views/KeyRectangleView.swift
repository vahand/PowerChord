//
//  KeyRectangleView.swift
//  PowerChord
//
//  Created by Vahan on 23/03/2024.
//

import SwiftUI

struct KeyRectangleView: View {
    @Environment(\.colorScheme) var colorScheme
    
    let key: String
    let note: String
    var keyTextSize: Int
    init(key: String, note: String) {
        self.key = key
        self.note = note
        self.keyTextSize = 24
    }
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 110, height: 90)
                .cornerRadius(15)
                .foregroundStyle(colorScheme == .dark ? Color(red: 0.110, green:0.110 , blue:0.118 ) : Color(red: 0.851, green:0.851 , blue:0.851 ))
            VStack {
                Text(key)
                    .font(.system(size: CGFloat(keyTextSize)))
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(colorScheme == .dark ? .white : .black)
                    .frame(width: 70, alignment: .leading)
                    .padding(.leading, 10.0)
                    .padding(.bottom, 1)
                    
                Text(note)
                    .font(.system(size: 22))
                    .foregroundStyle(Color(red: -0.001, green: 0.509, blue: 1.001))
                    .frame(width: 70, alignment: .leading)
                    .padding(.leading, 10.0)
            }
        }
    }
}

#Preview {
    KeyRectangleView(key: "1", note: "A")
}
