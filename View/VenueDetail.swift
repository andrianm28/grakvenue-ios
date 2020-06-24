//
//  VenueDetail.swift
//  grakvenue
//
//  Created by andrianm28 on 24/06/20.
//  Copyright © 2020 andrianm28. All rights reserved.
//

import SwiftUI

struct VenueDetail: View {
    var venue: SportVenue
    var body: some View {
        NavigationView {
            ScrollView (.vertical){
                
                venue.image.resizable()
                    .frame(height: UIScreen.main.bounds.size.height/3)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    .padding()
                
                Text(venue.description)
                    .font(.headline)
                    .padding()
                
                VStack (alignment: .leading) {
                    
                    HStack {
                          Image(systemName: "dollarsign.circle.fill")
                          Text(String(venue.price))
                              .frame( alignment: .topLeading)
                              .font(.headline)
                    }
                    
                    HStack {
                        Image(systemName: "location.fill")
                        Text(venue.address)
                            .frame( alignment: .topLeading)
                            .font(.headline)
                    }
                
                }.padding()

                 MapView(coordinate: venue.locationCoordinate,venueName: venue.name,venueDescription: venue.description)
                    .frame(height: UIScreen.main.bounds.size.height/3)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                        .padding()
                
                List() {
                    ScrollView (.horizontal) {
                        HStack {
                            ForEach(venueData) {
                                venues in
                                    VenueColoumn(venue: venues)
                            }
                        }
                    }
                }
                .padding(.leading, -20)
                .padding(.trailing,-20)
                .frame(height: UIScreen.main.bounds.size.height/4)
                
            }
        }
        .navigationBarTitle(Text(venue.name))
        .navigationBarItems(trailing: Button(action: {
            let tel = "tel://"
            let formattedString = tel + self.venue.phone
            guard let url = URL(string: formattedString) else { return }
            UIApplication.shared.open(url)
        
    }, label: {
                Image(systemName: "phone")
                Text(String(venue.phone))
            }))
        
    }
}

struct VenueDetail_Previews: PreviewProvider {
    static var previews: some View {
        VenueDetail(venue: venueData[0])
    }
}
