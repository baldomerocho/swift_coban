//
//  MapView.swift
//  coban
//
//  Created by Baldomero Cho on 28/07/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setREgion(coordinate)
            }
    }
    
    private func setREgion(_ coordinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center:coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 15.470_83, longitude: -90.370_83))
    }
}
