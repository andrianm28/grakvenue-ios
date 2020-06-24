//
//  VenueList.swift
//  grakvenue
//
//  Created by andrianm28 on 24/06/20.
//  Copyright © 2020 andrianm28. All rights reserved.
//

import SwiftUI


struct VenueRList: View {

    @State private var showModal = false
    @Environment(\.presentationMode) var presentationMode
    init() {
        // To remove only extra separators below the list:
        UITableView.appearance().tableFooterView = UIView()

        // To remove all separators including the actual ones:
        UITableView.appearance().separatorStyle = .none
        
    }
    var body: some View {
        NavigationView {
            List(venueData) { venue in
                NavigationLink(destination: VenueDetail(venue: venue)) {
                    VenueRow(venue: venue)
                }
            }
            .navigationBarTitle(Text("Venues"))
            .navigationBarItems(trailing: Button(action: {self.showModal.toggle()}, label: {Image(systemName: "person.crop.circle.fill")}))
        }.sheet(isPresented: $showModal){
            ProfileDetail()
        }
    }
}

struct VenueRList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            VenueRList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
