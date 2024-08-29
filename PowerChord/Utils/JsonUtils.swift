//
//  JsonUtils.swift
//  PowerChord
//
//  Created by Vahan on 28/08/2024.
//

import Foundation

func readJSONFile(filename: String) -> [Chord] {
    guard let fileURL = Bundle.main.url(forResource: filename, withExtension: "json") else {
        print("\(filename).json file not found.")
        return []
    }
    
    do {
        let data = try Data(contentsOf: fileURL)
        let decoder = JSONDecoder()
        let decodedData = try decoder.decode([Chord].self, from: data)
        print("\(filename).json parsed successfully")
        return decodedData
    } catch {
        print("Error decoding \(filename).json: \(error)")
        return []
    }
}
