//
//  StartPage.swift
//  PowerChord
//
//  Created by Vahan on 18/03/2024.
//

import SwiftUI

struct HomePageScreen: View {
    
    @State private var mainChord: Chord = Chord(id: 0, key: "A", notes: ["A", "Bm", "Dbm", "D", "E", "Gbm", "Abdim"], majorScale: ["A", "B", "Db", "D", "E", "Gb", "Ab"], pentatonicScale: ["A", "B", "Db", "E", "Gb"], bluesScale: ["A", "B", "C", "Db", "E", "Gb"])
    @State private var allChords: Array<Chord> = readJSONFile(filename: "Data")
    
    var body: some View {
        NavigationStack {
            VStack {
                MainTitle()
                    .padding(.top, 60)
                NavigationLink {
                    ChordNumberSystemScreen(chord: $mainChord, allChord: allChords)
                } label: {
                    ChoiceRectangle(label: "Chord Number System", image: "slider.horizontal.3").padding(8)
                }
                NavigationLink {
                    Scales(chord: $mainChord, allChord: allChords)
                } label: {
                    ChoiceRectangle(label: "Scales", image: "music.note.list").padding(8)
                }
//                NavigationLink {
//                    Tips()
//                } label: {
//                    ChoiceRectangle(label: "Tips", image: "lightbulb.fill").padding(8)
//                }
                LegendText(legend: "BY VAHAN DUCHER")
                    .padding(.top, 150)
            }
        }
        .padding()
    }
}

#Preview {
    HomePageScreen()
}
