//
//  ReadData.swift
//  PowerChord
//
//  Created by Vahan on 24/03/2024.
//

import Foundation

class ReadData: ObservableObject {
    @Published var chords = Array<Chord>()
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "Data", withExtension: "json")
        else {
            print("JSON Data file not found")
            return
        }
        
        let data: Data = try! Data(contentsOf: url)
        let chords = try? JSONDecoder().decode([Chord].self, from: data)
        self.chords = chords!
    }
}
