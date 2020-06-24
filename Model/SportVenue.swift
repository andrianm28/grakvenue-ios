//
//  SportVenue.swift
//  grakvenue
//
//  Created by andrianm28 on 24/06/20.
//  Copyright © 2020 andrianm28. All rights reserved.
//

/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The model for an individual SportVenue.
*/

import SwiftUI
import CoreLocation

struct SportVenue: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var address: String
    var description: String
    var phone: String
    var price: Int
    fileprivate var coordinates: Coordinates
    fileprivate var imageName: String

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}

extension SportVenue {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

