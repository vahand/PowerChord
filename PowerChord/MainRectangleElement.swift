//
//  MainRectangleElement.swift
//  PowerChord
//
//  Created by Vahan on 23/03/2024.
//

import SwiftUI

struct MainRectangleElement: View {
    @Environment(\.colorScheme) var colorScheme
    
    let key: String
    init(key: String){
        self.key = key
    }
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 140, height: 115)
                .cornerRadius(15)
                .foregroundStyle(colorScheme == .dark ? Color(red: 0.110, green:0.110 , blue:0.118 ) : Color(red: 0.851, green:0.851 , blue:0.851 ))
            VStack {
                Text("Key")
                    .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                    .frame(width: 120, alignment: .leading)
                    .font(.system(size: 37))
                    .fontWeight(.bold)
                    .padding(.leading, 20.0)
                    .padding(.bottom, 0.1)
                    .kerning(1.2)
                    
                HStack {
                    Text(key)
                        .foregroundStyle(Color(red: -0.001, green: 0.509, blue: 1.001))
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                        .frame(width: 50, alignment: .leading)
                        .padding(.trailing, 20)
                    Text("⌵")
                        .foregroundStyle(Color.gray)
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                }
            }
        }
    }
}

#Preview {
    MainRectangleElement(key: "A")
}
