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

struct HorizontalText: View {
    var content: String
    var isHeadline: Bool
    
    var body: some View {
        HStack {
            if isHeadline {
                Text(content)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.leading)
                    .padding([.bottom, .top], 8)
            } else {
                Text(content)
                    .padding(.leading)
            }
            Spacer()
        }
    }
}

struct HorizontalText_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalText(content: "This is content", isHeadline: true)
    }
}
