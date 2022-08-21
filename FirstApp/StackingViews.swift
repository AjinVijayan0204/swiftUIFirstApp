//
//  StackingViews.swift
//  FirstApp
//
//  Created by Ajin on 21/08/22.
//

import SwiftUI

struct StackingViews: View {
    @Environment(\.colorScheme) var color
    var body: some View {
        
       

        ZStack {
            RoundedRectangle(cornerRadius: 20.0)
                .foregroundColor(.orange)
                .frame(width: .infinity, height: 150.0, alignment: .center)

            VStack{
                    
                    Text("SwiftUI")
                        .fontWeight(.bold)
                        .font(Font.headline)
                        .foregroundColor( color == .dark ? .white : .black)
                    
                    Text("Use SwiiftUI to design this card")
                        .font(Font.body)
                    
                    Text("Add some italic text here")
                        .font(Font.body)
                        .italic()
            }
        }.padding(5)
        
        
    }
}



struct StackingViews_Previews: PreviewProvider {
    static var previews: some View {
        StackingViews()
        StackingViews().previewDevice("iPhone 11 Pro")
            .preferredColorScheme(.dark)
    
    }
}
