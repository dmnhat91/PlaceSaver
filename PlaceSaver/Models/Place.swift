//
//  Place.swift
//  PlaceSaver
//
//  Created by Duong Minh Nhat on 06/08/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Place: Identifiable, Codable{
    var id: Int
    var name: String
    var description: String
    var address: String
    

    var imageName: String
    var image: Image {
        Image(imageName)
    }
    var bgImageName: String //background image
    var bgImage: Image {
        Image(bgImageName)
    }
    
    var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}
