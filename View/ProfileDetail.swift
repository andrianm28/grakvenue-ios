//
//  ProfileView.swift
//  grakvenue
//
//  Created by andrianm28 on 24/06/20.
//  Copyright © 2020 andrianm28. All rights reserved.
//

import SwiftUI

struct ProfileDetail: View {
    
    @Environment(\.presentationMode) private var presentationMode

    var body: some View {
        NavigationView {
            VStack (alignment: .center, spacing: 20) {
                ProfileHero(image: Image("hero_andrianm28"))
                VStack (alignment: .center, spacing: 20) {
                    Text("Mochammad Andrian Maulana")
                        .font(.title)
                    Text("andrianmaulana28@gmail.com")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.all,10)
                        .background(Color.gray)
                        .cornerRadius(10)
                }.padding()
                }
        .navigationBarTitle("Profile")
        .navigationBarItems(leading: Button(action: {self.presentationMode.wrappedValue.dismiss()}, label: {
            HStack {
                Image(systemName: "chevron.left")
                Text("Venues")
            }}))
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetail()
    }
}
