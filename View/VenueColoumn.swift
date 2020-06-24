//
//  VenueColoumn.swift
//  grakvenue
//
//  Created by andrianm28 on 25/06/20.
//  Copyright © 2020 andrianm28. All rights reserved.
//

import SwiftUI

struct VenueColoumn: View {
    var venue: SportVenue
    var body: some View {
        VStack {
            venue.image.resizable()
            .frame(width: 150, height: 150)
            .cornerRadius(10)
            .shadow(radius: 10)
            Text(venue.name).font(.headline)
            Text(String(venue.price)).font(.subheadline)
        }.padding()
    }
}

struct VenueColoumn_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VenueColoumn(venue: venueData[0])
            VenueColoumn(venue: venueData[1])
        }
        .previewLayout(.fixed(width: 200, height: 200 ))
    }
}
