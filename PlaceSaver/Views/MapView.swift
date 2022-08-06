import SwiftUI
import MapKit

struct MapView: View {
    var place: Place
    
    @State private var region = MKCoordinateRegion()

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: [place]){_ in
            MapMarker(coordinate: place.locationCoordinate)
        }
            .onAppear {
                setRegion(place.locationCoordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(place: places[0])
    }
}
