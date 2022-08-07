/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Duong Minh Nhat
  ID: s3715125
  Created  date: 06/08/2022
  Last modified: 06/08/2022
  Acknowledgement: Ideas based on Apple documentation and tutorials
*/

import SwiftUI

struct ImageMatrixView: View {
    var imageNames : [String]
    
    var body: some View {
        
        VStack(alignment: .leading){
            GeometryReader { geo in
                ScrollView {
                    LazyVGrid(columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible())
                     ], spacing: 3){
                         ForEach(imageNames, id: \.self){
                             imageName in Image(imageName)
                                 .resizable()
                                 .frame(width: geo.size.width/3, height: geo.size.width/3)
                         }
                    }
                }
            }
        }.frame(height: 375)
    }
}

struct ImageMatrixView_Previews: PreviewProvider {
    static var previews: some View {
        ImageMatrixView(imageNames: places[0].subImageList)
    }
}
