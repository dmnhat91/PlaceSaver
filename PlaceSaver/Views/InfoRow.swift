//
//  InfoRow.swift
//  PlaceSaver
//
//  Created by Duong Minh Nhat on 06/08/2022.
//

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
