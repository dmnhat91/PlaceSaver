//
//  ImageMatrixView.swift
//  PlaceSaver
//
//  Created by Duong Minh Nhat on 06/08/2022.
//

import SwiftUI

struct ImageMatrixView: View {
    var imageNames = ["nh-walking-street-sub1","nh-walking-street-sub2","nh-walking-street-sub3","nh-walking-street-sub4"]
    
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
        }
    }
}

struct ImageMatrixView_Previews: PreviewProvider {
    static var previews: some View {
        ImageMatrixView()
    }
}
