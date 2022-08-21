//
//  ContentView.swift
//  FirstApp
//
//  Created by Ajin on 20/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .fontWeight(Font.Weight.bold)
                .foregroundColor(Color(hue: 0.121, saturation: 0.888, brightness: 0.946, opacity: 0.775))
                .font(Font.title)
            
    
            HStack{
                Text("Joshua National Park")
                    .font(Font.subheadline)
                
                Spacer()
                
                Text("California")
            }
            
                
        }.padding()
      
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
