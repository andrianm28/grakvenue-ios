//
//  MapView.swift
//  grakvenue
//
//  Created by andrianm28 on 24/06/20.
//  Copyright © 2020 andrianm28. All rights reserved.
//
/*
Abstract:
View for loading map
*/

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    var venueName: String?
    var venueDescription: String?

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let pin = MKPointAnnotation()
        pin.coordinate = coordinate
        pin.title = venueName
        pin.subtitle = venueDescription
        let span = MKCoordinateSpan(latitudeDelta: 0.002, longitudeDelta: 0.002)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        uiView.addAnnotation(pin)
    }
//    func setPinUsingMKPlacemark(location: CLLocationCoordinate2D) {
//       let pin = MKPlacemark(coordinate: location)
//       let coordinateRegion = MKCoordinateRegion(center: pin.coordinate, latitudinalMeters: 800, longitudinalMeters: 800)
//       uiView.setRegion(coordinateRegion, animated: true)
//       mapView.addAnnotation(pin)
//    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: venueData[0].locationCoordinate, venueName: venueData[0].name, venueDescription: venueData[0].description)
    }
}
