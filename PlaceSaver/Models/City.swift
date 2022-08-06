//
//  City.swift
//  PlaceSaver
//
//  Created by Duong Minh Nhat on 06/08/2022.
//

import Foundation

struct City: Identifiable, Codable{
    var id: Int
    var name: String
    var places: [Place]
}
