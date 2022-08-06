//
//  WelcomeView.swift
//  PlaceSaver
//
//  Created by Duong Minh Nhat on 06/08/2022.
//

import SwiftUI

struct WelcomeView: View {
    @State var isWelcomeActive: Bool = true
    
    var body: some View {
        ZStack {
            if isWelcomeActive {
                GreetingView(active: $isWelcomeActive)
            } else {
                InfoList()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
