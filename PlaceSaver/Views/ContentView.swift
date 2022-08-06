//
//  ContentView.swift
//  PlaceSaver
//
//  Created by Duong Minh Nhat on 04/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, world!")
//            .padding()
        InfoView(image: Image("nh-walking-street"), backgroundImage: Image("nh-walking-street-bg"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.sizeThatFits)
    }
}
