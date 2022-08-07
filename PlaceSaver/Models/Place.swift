/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Duong Minh Nhat
  ID: s3715125
  Created  date: 06/08/2022
  Last modified: 06/08/2022
*/

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
    
    //background image
    var bgImageName: String
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
    
    //list of images to display in Photos
    var subImageList: [String]
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}
