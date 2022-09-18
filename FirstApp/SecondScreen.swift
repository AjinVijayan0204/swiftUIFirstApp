//
//  SecondScreen.swift
//  FirstApp
//
//  Created by Ajin on 18/09/22.
//

import SwiftUI

struct SecondScreen: View {
    var data: Rajya
    var body: some View {
        VStack{
            Text(data.name)
            Text(data.capital)
            Text(data.currency)
            Text(data.language)
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen(data: Rajya(name: "Indida", capital: "Delhi", currency: "rupee", language: "Many"))
    }
}
