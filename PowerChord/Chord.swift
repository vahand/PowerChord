//
//  Chord.swift
//  PowerChord
//
//  Created by Vahan on 23/03/2024.
//

import Foundation

struct Chord: Hashable, Identifiable, Codable {
    var id: String
    var key: String
    var notes: Array<String>
    var majorScale: Array<String>
    var pentatonicScale: Array<String>
    var bluesScale: Array<String>
    init(id: Int, key: String, notes: Array<String>, majorScale: Array<String>, pentatonicScale: Array<String>, bluesScale: Array<String>) {
        self.key = key
        self.notes = notes
        self.majorScale = majorScale
        self.pentatonicScale = pentatonicScale
        self.bluesScale = bluesScale
        self.id = UUID().uuidString
    }
}
