//
//  ChordNumberSystem.swift
//  PowerChord
//
//  Created by Vahan on 18/03/2024.
//

import SwiftUI

struct ChordNumberSystem: View {
    @Binding var chord: Chord
    
    private let allChord: Array<Chord>

    init(chord: Binding<Chord>, allChord: Array<Chord>) {
        _chord = chord
        self.allChord = allChord
    }
    
    var body: some View {
        NavigationView {
            VStack {
                TitleView(title: "CHORD\nNUMBER\nSYSTEM")
                HStack {
                    Menu {
                        Picker(selection: $chord, label: EmptyView()) {
                            ForEach(self.allChord, id: \.self) { item in
                                Text(item.key).tag(item as Chord?)
                            }
                        }
                    } label: {
                        MainRectangleElement(key:self.chord.key)
                            .padding(.trailing, 30)
                    }
                    Menu {
                        Picker(selection: $chord, label: EmptyView()) {
                            ForEach(self.allChord, id: \.self) { item in
                                Text(item.key).tag(item as Chord?)
                            }
                        }
                    } label: {
                        Signature(key: self.chord.key)
                    }
                }
                .padding(.bottom, 40)
                .padding(.top, 40)
                HStack {
                    RectangleElement(key:"1", note: chord.notes[0])
                    RectangleElement(key:"2(m)", note: chord.notes[1])
                    RectangleElement(key:"3(m)", note: chord.notes[2])
                }
                HStack {
                    RectangleElement(key:"4", note: chord.notes[3])
                    RectangleElement(key:"5", note: chord.notes[4])
                    RectangleElement(key:"6(m)", note: chord.notes[5])
                }
                RectangleElement(key:"7(dim)", note: chord.notes[6])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        @State var chordA = Chord.init(id: 0, key: "A", notes: ["A", "Bm", "C#m", "D", "E", "F#m", "G#dim"], majorScale: ["A", "B", "C#", "D", "E", "F#", "G#"], pentatonicScale: ["A", "B", "Db", "E", "Gb"], bluesScale: ["A", "B", "C", "Db", "E", "Gb"])
        let chordB = Chord.init(id: 0, key: "B", notes: ["B", "C#m", "D#m", "E", "F#", "G#m", "A#dim"], majorScale: ["A", "B", "C#", "D", "E", "F#", "G#"], pentatonicScale: ["A", "B", "Db", "E", "Gb"], bluesScale: ["A", "B", "C", "Db", "E", "Gb"])
        let chords = [chordA, chordB]
        ChordNumberSystem(chord: $chordA, allChord: chords)
        ChordNumberSystem(chord: $chordA, allChord: chords)
    }
}


