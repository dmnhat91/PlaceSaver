//
//  ModelData.swift
//  PlaceSaver
//
//  Created by Duong Minh Nhat on 06/08/2022.
//

import Foundation
import CoreLocation

var places = decodeJsonFromJsonFileToPlace(jsonFileName: "places.json")
var cities = decodeJsonFromJsonFileToCity(jsonFileName: "cities.json")

// How to decode a json file into a struct
func decodeJsonFromJsonFileToPlace(jsonFileName: String) -> [Place] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Place].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [Place]
}

func decodeJsonFromJsonFileToCity(jsonFileName: String) -> [City] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([City].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [City]
}

