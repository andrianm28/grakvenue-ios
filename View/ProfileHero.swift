//
//  ProfileHero.swift
//  grakvenue
//
//  Created by andrianm28 on 25/06/20.
//  Copyright © 2020 andrianm28. All rights reserved.
//

import SwiftUI

struct ProfileHero: View {
    var image: Image
    var body: some View {  image
        .resizable()
        .frame(width: 200, height: 200)
                  .clipShape(Circle())
                  .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
    }
}

struct ProfileHero_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHero(image: Image("hero_andrianm28"))
    }
}
