//
//  PropertyEnvironment.swift
//  FirstApp
//
//  Created by Ajin on 21/08/22.
//

import SwiftUI

struct PropertyEnvironment: View {
    
    @Environment(\.colorScheme) var color
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).foregroundColor(color == .dark ? .white : .black)
    }
}

struct PropertyEnvironment_Previews: PreviewProvider {
    static var previews: some View {
        PropertyEnvironment()
        PropertyEnvironment().previewDevice("iPhone 12 Pro Max")
            .preferredColorScheme(.dark)
    }
}
