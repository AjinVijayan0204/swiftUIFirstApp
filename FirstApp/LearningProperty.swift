//
//  LearningProperty.swift
//  FirstApp
//
//  Created by Ajin on 21/08/22.
//

import SwiftUI

struct LearningProperty: View {
    
    //store related values to ui widgets
    @State private var name = "US"
    
    var body: some View {
        VStack{
            Text(name)
            
            //stored in another struct
            NextView(capital: $name)
            Button("Click to change") {
                name = "India"
                
            }
        }
        
        
    }
}

struct NextView: View{
    
    //data linked from other view
    @Binding var capital:String
    var body: some View{
        Text(capital)
    }
    
}

struct LearningProperty_Previews: PreviewProvider {
    static var previews: some View {
        LearningProperty()
    }
}
