//
//  ScaleListView.swift
//  PowerChord
//
//  Created by Vahan on 25/03/2024.
//

import SwiftUI

struct ScaleListView: View {
    let chord: Chord
    let chords: Array<String>
    let scaleType: String
    var incrementation: Array<String>
    init(chord: Chord, scaleType: String) {
        self.chord = chord
        self.scaleType = scaleType
        if (scaleType == "Pentatonic") {
            self.chords = self.chord.pentatonicScale
            incrementation = ["+1", "+1", "+1.5", "+1"]
        } else {
            self.chords = self.chord.majorScale
        }
        if (scaleType == "Blues") {
            incrementation = ["+1", "+0.5", "+0.5", "+1.5", "+1"]
        } else {
            incrementation = ["+1", "+1", "+0.5", "+1", "+1", "+1"]
        }
    }
    
    var body: some View {
        VStack {
            ScaleListViewLine(position: "1st", key: chords[0], incrementation: "", mainChord: true)
            ScaleListViewLine(position: "2nd", key: chords[1], incrementation: self.incrementation[0], mainChord: false)
            ScaleListViewLine(position: "3rd", key: chords[2], incrementation: self.incrementation[1], mainChord: true)
            ScaleListViewLine(position: (scaleType == "Pentatonic") ? "5th" : "4th", key: chords[3], incrementation: self.incrementation[2], mainChord: false)
            ScaleListViewLine(position: (scaleType == "Pentatonic") ? "6th" : "5th", key: chords[4], incrementation: self.incrementation[3], mainChord: true)
            if (self.scaleType != "Pentatonic") {
                ScaleListViewLine(position: "6th", key: chords[5], incrementation: self.incrementation[4], mainChord: false)
                if (self.scaleType != "Blues") {
                    ScaleListViewLine(position: "7th", key: chords[6], incrementation: self.incrementation[5], mainChord: true)
                } else {
                    ScaleListViewLine(position: "", key: "", incrementation: "", mainChord: false)
                }
            } else {
                ScaleListViewLine(position: "", key: "", incrementation: "", mainChord: false)
                ScaleListViewLine(position: "", key: "", incrementation: "", mainChord: false)
            }
        }
    }
}

struct ScaleListView_Previews: PreviewProvider {
    static var previews: some View {
        let tempChord: Chord = Chord(id: 0, key: "A", notes: ["A", "Bm", "Dbm", "D", "E", "Gbm", "Abdim"], majorScale: ["A", "B", "Db", "D", "E", "Gb", "Ab"], pentatonicScale: ["A", "B", "Db", "E", "Gb"], bluesScale: ["A", "B", "C", "Db", "E", "Gb"])
        ScaleListView(chord: tempChord, scaleType: "Major")
        ScaleListView(chord: tempChord, scaleType: "Major")
            .preferredColorScheme(.light)
    }
}
