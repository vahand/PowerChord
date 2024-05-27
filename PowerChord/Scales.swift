//
//  Scales.swift
//  PowerChord
//
//  Created by Vahan on 18/03/2024.
//

import SwiftUI

struct Scales: View {
    @Binding var chord: Chord
    @State var scaleType: String = "Scale"
    var allScaleTypes: [String] = ["Scale", "Pentatonic", "Blues"]
    
    private let allChord: Array<Chord>

    init(chord: Binding<Chord>, allChord: Array<Chord>) {
        _chord = chord
        self.allChord = allChord
    }
    
    var body: some View {
        NavigationView {
            VStack {
                TitleView(title: "SCALES")
                HStack {
                    Menu {
                        Picker(selection: $chord, label: EmptyView()) {
                            ForEach(self.allChord, id: \.self) { item in
                                Text(item.key).tag(item as Chord?)
                            }
                        }
                    } label: {
                        MainRectangleElement(key:self.chord.key)
                            .padding(.trailing, 2)
                    }
                    
                    Menu {
                        Picker(selection: $scaleType, label: EmptyView()) {
                            ForEach(self.allScaleTypes, id: \.self) { item in
                                Text(item).tag(item as String)
                            }
                        }
                    } label: {
                        ScaleTypeSelection(scaleType: self.scaleType)
                    }
                }
                .padding(.top, 25)
                .padding(.bottom, 1)
                ScaleDisplaying(chord: chord, scaleType: self.scaleType)
            }
        }
    }
}

struct ScalesView_Preview: PreviewProvider {
    static var previews: some View {
        @State var chordA = Chord.init(id: 0, key: "C#", notes: ["A", "Bm", "C#m", "D", "E", "F#m", "G#dim"], majorScale: ["A", "B", "C#", "D", "E", "F#", "G#"], pentatonicScale: ["Db", "Eb", "F", "Ab", "Bb"], bluesScale: ["A", "B", "C", "Db", "E", "Gb"])
        let chordB = Chord.init(id: 1, key: "B", notes: ["B", "C#m", "D#m", "E", "F#", "G#m", "A#dim"], majorScale: ["A", "B", "C#", "D", "E", "F#", "G#"], pentatonicScale: ["B", "Db", "Eb", "Gb", "Ab"], bluesScale: ["A", "B", "C", "Db", "E", "Gb"])
        let chords = [chordA, chordB]
        Scales(chord: $chordA, allChord: chords)
        Scales(chord: $chordA, allChord: chords)
    }
}
