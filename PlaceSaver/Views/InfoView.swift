//
//  InfoView.swift
//  PlaceSaver
//
//  Created by Duong Minh Nhat on 05/08/2022.
//

import SwiftUI

struct InfoView: View {
    var place: Place
    
    var body: some View {
        ScrollView {
            VStack {
                place.bgImage
                    .resizable()
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 250)
                    .scaledToFit()
                place.image
                    .clipShape(Rectangle())
                    .overlay(Rectangle().stroke(Color(.white),lineWidth: 1))
                    .shadow(radius: 1)
                    .offset(y: -100)
                    .padding(.bottom, -100)
                Text(place.name)
                    .frame(width: 350)
                    .font(.title)
                    .scaledToFit()
                    .padding(.bottom)
                HorizontalText(content: "Description", isHeadline: true)
                HorizontalText(content: place.description, isHeadline: false)
                HorizontalText(content: "Location", isHeadline: true)
                InfoText(imageName: "mappin.circle", text: place.address)
                MapView(coordinate: place.locationCoordinate)
                    .frame(height: 250)
            }
            
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(place: places[0])
//            .previewLayout(.sizeThatFits)
    }
}
