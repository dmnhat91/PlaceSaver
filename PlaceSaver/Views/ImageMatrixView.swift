//
//  ImageMatrixView.swift
//  PlaceSaver
//
//  Created by Duong Minh Nhat on 06/08/2022.
//

import SwiftUI

struct ImageMatrixView: View {
    let posts = ["square.and.arrow.up", "square.and.arrow.up.fill", "square.and.arrow.down", "square.and.arrow.down.on.square.fill"]
    
    var body: some View {
        VStack(alignment: .leading){
            GeometryReader { geo in
                ScrollView {
                    LazyVGrid(columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible())
                     ], spacing: 3){
                         ForEach(posts, id: \.self){
                             post in Image(systemName: post)
                                 .frame(width: geo.size.width/3, height: geo.size.width/3)
                                 .background(Color.pink)
                                 .foregroundColor(Color.white)
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
