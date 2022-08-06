//
//  InfoText.swift
//  PlaceSaver
//
//  Created by Duong Minh Nhat on 06/08/2022.
//

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
