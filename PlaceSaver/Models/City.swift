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

struct City: Identifiable, Codable{
    var id: Int
    var name: String
    var places: [Place]
}
