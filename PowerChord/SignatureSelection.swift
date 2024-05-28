//
//  SignatureSelection.swift
//  PowerChord
//
//  Created by Vahan on 27/05/2024.
//

import SwiftUI

struct SignatureSelectionElement: View {
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var chord: Chord
    private let allChord: Array<Chord>
    var key: String

    init(chord: Binding<Chord>, allChord: Array<Chord>, key: String) {
        _chord = chord
        self.allChord = allChord
        self.key = key
    }
    
    var body: some View {
        Button {
            chord = getChordFromKey(src: allChord, key: self.key) ?? chord
            self.presentationMode.wrappedValue.dismiss()
        } label: {
            Image(self.key)
                .resizable()
                .clipShape(.rect(cornerRadius: 10))
                .frame(width: 100, height: 100)
                .padding(10)
        }
    }
}

struct SignatureSelection: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var chord: Chord
    
    private let allChord: Array<Chord>

    init(chord: Binding<Chord>, allChord: Array<Chord>) {
        _chord = chord
        self.allChord = allChord
    }
    var body: some View {
        VStack {
            Text("Signature")
                .foregroundStyle(colorScheme == .dark ? .white : Color.black)
                .font(.system(size: 37))
                .fontWeight(.bold)
                .kerning(1.2)
                .padding(.bottom, 0.1)
            HStack {
                SignatureSelectionElement(chord: $chord, allChord: self.allChord, key: "C")
                SignatureSelectionElement(chord: $chord, allChord: self.allChord, key: "Db")
                SignatureSelectionElement(chord: $chord, allChord: self.allChord, key: "D")
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HStack {
                SignatureSelectionElement(chord: $chord, allChord: self.allChord, key: "Eb")
                SignatureSelectionElement(chord: $chord, allChord: self.allChord, key: "E")
                SignatureSelectionElement(chord: $chord, allChord: self.allChord, key: "F")
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HStack {
                SignatureSelectionElement(chord: $chord, allChord: self.allChord, key: "Gb")
                SignatureSelectionElement(chord: $chord, allChord: self.allChord, key: "G")
                SignatureSelectionElement(chord: $chord, allChord: self.allChord, key: "Ab")
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HStack {
                SignatureSelectionElement(chord: $chord, allChord: self.allChord, key: "A")
                SignatureSelectionElement(chord: $chord, allChord: self.allChord, key: "Bb")
                SignatureSelectionElement(chord: $chord, allChord: self.allChord, key: "B")
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

struct SignatureSelection_Previews: PreviewProvider {
    static var previews: some View {
        @State var chordA = Chord.init(id: 0, key: "A", notes: ["A", "Bm", "C#m", "D", "E", "F#m", "G#dim"], majorScale: ["A", "B", "C#", "D", "E", "F#", "G#"], pentatonicScale: ["A", "B", "Db", "E", "Gb"], bluesScale: ["A", "B", "C", "Db", "E", "Gb"])
        let chordB = Chord.init(id: 0, key: "B", notes: ["B", "C#m", "D#m", "E", "F#", "G#m", "A#dim"], majorScale: ["A", "B", "C#", "D", "E", "F#", "G#"], pentatonicScale: ["A", "B", "Db", "E", "Gb"], bluesScale: ["A", "B", "C", "Db", "E", "Gb"])
        let chords = [chordA, chordB]
        SignatureSelection(chord: $chordA, allChord: chords)
    }
}
