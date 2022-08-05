//
//  SquareImage.swift
//  PlaceSaver
//
//  Created by Duong Minh Nhat on 04/08/2022.
//

import SwiftUI

struct SquareImage: View {
    var image: Image
    var backgroundImage: Image
    
    var body: some View {
        VStack {
            backgroundImage
                .resizable()
                .frame(width: 650, height: 250)
            image
                .clipShape(Rectangle())
                .overlay(Rectangle().stroke(Color(.white),lineWidth: 4))
                .shadow(radius: 1)
        }
    }
}

struct SquareImage_Previews: PreviewProvider {
    static var previews: some View {
        SquareImage(image: Image("nh-walking-street"), backgroundImage: Image("nh-walking-street-bg")).previewLayout(.sizeThatFits)
    }
}
