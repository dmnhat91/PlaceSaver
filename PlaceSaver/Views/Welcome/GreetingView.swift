/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Duong Minh Nhat
  ID: s3715125
  Created  date: 06/08/2022
  Last modified: 06/08/2022
  Acknowledgement: Ideas based on lecturer resources
*/

import SwiftUI

struct GreetingView: View {
    @Binding var active: Bool
    
    var body: some View {
        ZStack {
            ColorConstants.lightGreen
                .ignoresSafeArea(.all, edges: .all)
            
            VStack {
                Spacer()
                
                Image("icon-symbol")
                Text("Welcome")
                  .font(.system(size: 50))
                  .fontWeight(.heavy)
                  .padding(.bottom)
                Text("""
                    Save your favorite locations.
                    Eliminate the need for memorization!
                    """)
                  .font(.title3)
                  .fontWeight(.bold)
                  .multilineTextAlignment(.center)
                  .padding(.horizontal, 10)
                
                Spacer()
                
                Button(action: {
                    active = false
                }, label: {
                    Capsule()
                      .fill(ColorConstants.heavyGreen)
                      .padding(8)
                      .frame(height:80)
                      .overlay(Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white))
                })
                
            }
        }
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView(active: .constant(true))
    }
}
