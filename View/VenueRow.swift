//
//  VenueRow.swift
//  grakvenue
//
//  Created by andrianm28 on 24/06/20.
//  Copyright © 2020 andrianm28. All rights reserved.
//

import SwiftUI


import SwiftUI

struct VenueRow: View {
    var venue: SportVenue
    var body: some View {
        ZStack {
            Color.gray
                .cornerRadius(10).opacity(0.05)
            HStack {
                venue.image.resizable()
                    .frame(width: 80, height: 80)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                VStack (alignment: .leading){
                    Text(venue.name)
                        .font(.headline)
                    Spacer()
                    Text(String(venue.price))
                        .font(.subheadline)
                } .padding()
                Spacer()
            }
        }
        
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VenueRow(venue: venueData[0])
            VenueRow(venue: venueData[1])
        }
        .previewLayout(.fixed(width: 500, height: 120 ))
    }
}
