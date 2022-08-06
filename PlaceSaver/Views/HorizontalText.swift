//
//  HorizontalText.swift
//  PlaceSaver
//
//  Created by Duong Minh Nhat on 06/08/2022.
//

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
        HorizontalText(content: "This is content", isHeadline: false)
    }
}
