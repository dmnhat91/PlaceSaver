//
//  InfoView.swift
//  PlaceSaver
//
//  Created by Duong Minh Nhat on 05/08/2022.
//

import SwiftUI

struct InfoView: View {
    var image: Image
    var backgroundImage: Image
    
    var body: some View {
        ScrollView {
            VStack {
                backgroundImage
                    .resizable()
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 250)
                    .scaledToFit()
                image
                    .clipShape(Rectangle())
                    .overlay(Rectangle().stroke(Color(.white),lineWidth: 1))
                    .shadow(radius: 1)
                    .offset(y: -100)
                    .padding(.bottom, -100)
                Text("Nguyen Hue Walking Street")
                    .frame(width: 350)
                    .font(.title)
                    .scaledToFit()
                    .padding(.bottom)
                HStack {
                    Text("Description")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.leading)
                    Spacer()
                }
            }
            
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(image: Image("nh-walking-street"), backgroundImage: Image("nh-walking-street-bg"))
//            .previewLayout(.sizeThatFits)
    }
}
