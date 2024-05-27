//
//  SignatureSelection.swift
//  PowerChord
//
//  Created by Vahan on 27/05/2024.
//

import SwiftUI

struct SignatureSelection: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode
    @Binding var chord: Chord
    
    private let allChord: Array<Chord>

    init(chord: Binding<Chord>, allChord: Array<Chord>) {
        _chord = chord
        self.allChord = allChord
    }
    var body: some View {
        NavigationView {
            VStack {
                Text("Signature")
                    .foregroundStyle(colorScheme == .dark ? .white : Color.black)
                    .font(.system(size: 37))
                    .fontWeight(.bold)
                    .kerning(1.2)
                    .padding(.bottom, 0.1)
                HStack {
                    Button {
                        chord = getChordFromKey(src: allChord, key: "C") ?? chord
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image("C")
                            .resizable()
                            .clipShape(.rect(cornerRadius: 10))
                            .frame(width: 100, height: 100)
                            .padding(10)
                    }
                    Image("Db")
                        .resizable()
                        .clipShape(.rect(cornerRadius: 10))
                        .frame(width: 100, height: 100)
                        .padding(10)
                    Image("D")
                        .resizable()
                        .clipShape(.rect(cornerRadius: 10))
                        .frame(width: 100, height: 100)
                        .padding(10)
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                HStack {
                    Image("Eb")
                        .resizable()
                        .clipShape(.rect(cornerRadius: 10))
                        .frame(width: 100, height: 100)
                        .padding(10)
                    Image("E")
                        .resizable()
                        .clipShape(.rect(cornerRadius: 10))
                        .frame(width: 100, height: 100)
                        .padding(10)
                    Image("F")
                        .resizable()
                        .clipShape(.rect(cornerRadius: 10))
                        .frame(width: 100, height: 100)
                        .padding(10)
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                HStack {
                    Image("Gb")
                        .resizable()
                        .clipShape(.rect(cornerRadius: 10))
                        .frame(width: 100, height: 100)
                        .padding(10)
                    Image("G")
                        .resizable()
                        .clipShape(.rect(cornerRadius: 10))
                        .frame(width: 100, height: 100)
                        .padding(10)
                    Image("Ab")
                        .resizable()
                        .clipShape(.rect(cornerRadius: 10))
                        .frame(width: 100, height: 100)
                        .padding(10)
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                HStack {
                    Image("A")
                        .resizable()
                        .clipShape(.rect(cornerRadius: 10))
                        .frame(width: 100, height: 100)
                        .padding(10)
                    Image("Bb")
                        .resizable()
                        .clipShape(.rect(cornerRadius: 10))
                        .frame(width: 100, height: 100)
                        .padding(10)
                    Image("B")
                        .resizable()
                        .clipShape(.rect(cornerRadius: 10))
                        .frame(width: 100, height: 100)
                        .padding(10)
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
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
