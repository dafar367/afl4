//
//  mapsView.swift
//  afl4
//
//  Created by atallah dafa on 06/06/22.
//

import SwiftUI
import MapKit


struct mapsView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion(
    )
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(coordinate)
            }
    }
    private func setRegion(_ coordinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        )
    }
}

struct mapsView_Previews: PreviewProvider {
    static var previews: some View {
        mapsView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
