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
//    @State private var region = MKCoordinateRegion(
//    )
    @AppStorage("MapView.zoom")
    private var zoom: Zoom = .near
    
    enum Zoom: String, CaseIterable, Identifiable {
        case near = "Near"
        case medium = "Medium"
        case far = "Far"

        var id: Zoom {
            return self
        }
    }
    
    var delta: CLLocationDegrees {
            switch zoom {
            case .near: return 0.009
            case .medium: return 0.04
            case .far: return 0.2
        }
    }
    
    var body: some View {
        Map(coordinateRegion: .constant(region))
//            .onAppear{
//                setRegion(coordinate)
//            }
    }
//    private func setRegion(_ coordinate: CLLocationCoordinate2D){
//        region = MKCoordinateRegion(
//            center: coordinate,
//            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
//        )
//    }
    var region: MKCoordinateRegion {
            MKCoordinateRegion(
                center: coordinate,
                span: MKCoordinateSpan(latitudeDelta: delta, longitudeDelta: delta)
            )
        }
}

struct mapsView_Previews: PreviewProvider {
    static var previews: some View {
        mapsView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
