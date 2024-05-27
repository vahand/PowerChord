//
//  Signature.swift
//  PowerChord
//
//  Created by Vahan on 23/03/2024.
//

import SwiftUI

struct Signature: View {
    @Environment(\.colorScheme) var colorScheme
    
    let key: String
    init (key: String) {
        self.key = key
    }
    var body: some View {
        VStack {
            Text("Signature")
                .foregroundStyle(colorScheme == .dark ? .white : Color.black)
                .font(.system(size: 37))
                .fontWeight(.bold)
                .kerning(1.2)
                .padding(.bottom, 0.1)
            Image(key)
                .padding(.top, 0.1)
                .clipShape(.rect(cornerRadius: 10))
                .padding(.trailing, 100)
        }
    }
}

#Preview {
    Signature(key:"A")
}
