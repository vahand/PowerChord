//
//  ScaleTypeSelection.swift
//  PowerChord
//
//  Created by Vahan on 07/04/2024.
//

import SwiftUI

struct ScaleTypeSelection: View {
    @Environment(\.colorScheme) var colorScheme
        
    let scaleType: String
    init(scaleType: String){
        self.scaleType = scaleType
    }
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 210, height: 53)
                .cornerRadius(15)
                .foregroundStyle(colorScheme == .dark ? Color(red: 0.110, green:0.110 , blue:0.118 ) : Color(red: 0.851, green:0.851 , blue:0.851 ))
            HStack {
                Text(scaleType)
                    .foregroundStyle(Color(red: -0.001, green: 0.509, blue: 1.001))
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .frame(width: 150 , alignment: .leading)
                Text("⌵")
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                    .frame(height: 43, alignment: .topTrailing)
            }
        }
    }
}

#Preview {
    ScaleTypeSelection(scaleType: "Major")
}
