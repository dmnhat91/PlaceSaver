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

import SwiftUI

struct InfoText: View {
    var imageName: String
    var text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
            Text(text)
            Spacer()
        }.padding(.leading)
    }
}

struct InfoText_Previews: PreviewProvider {
    static var previews: some View {
        InfoText(imageName: "mappin.circle", text: "address")
            .previewLayout(.sizeThatFits)
    }
}
