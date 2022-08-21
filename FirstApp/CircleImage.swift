//
//  CircleImage.swift
//  FirstApp
//
//  Created by Ajin on 20/08/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtleRock")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(.gray, lineWidth: 5.0))
            .shadow(radius: 10.0)

    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
