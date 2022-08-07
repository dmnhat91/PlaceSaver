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

struct InfoList: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
                List() {
                    ForEach(searchResults) { city in
                        Section(header: Text("\(city.name)")) {
                            ForEach(city.places) { place in
                                NavigationLink{
                                    InfoView(place: place)
                                } label: {
                                    InfoRow(place: place)
                                }
                            }
                        }
                    }
                }
                .navigationTitle("My favorite places ⭐️")
        }.searchable(text: $searchText)
    }
    
    var searchResults: [City] {
        if searchText.isEmpty {
            return cities
        } else {
            return cities.filter { $0.name.contains(searchText) }
        }
    }
}

struct InfoList_Previews: PreviewProvider {
    static var previews: some View {
        InfoList()
    }
}
