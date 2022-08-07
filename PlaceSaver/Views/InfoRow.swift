/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Duong Minh Nhat
  ID: s3715125
  Created  date: 06/08/2022
  Last modified: 06/08/2022
  Acknowledgement: Ideas based on lecturer resources
*/

import SwiftUI

struct InfoRow: View {
    var place: Place
    
    var body: some View {
        HStack {
            place.image
                .resizable()
                .frame(width: 50, height: 50)
            VStack{
                Text(place.name)
            }
        }
    }
}

struct InfoRow_Previews: PreviewProvider {
    static var previews: some View {
        InfoRow(place: places[0])
    }
}
