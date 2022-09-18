//
//  NavDemo.swift
//  FirstApp
//
//  Created by Ajin on 18/09/22.
//

import SwiftUI

struct NavDemo: View {
    @State var countries = ["Albenia", "India", "Germany","Usa","Norway","Finland","Sweden","Japan"]
    
    var body: some View {
        
        NavigationView{
            
            //MARK: - Form simple screen
            //using form
            
//            Form{
////                ForEach(0..<countries.count){ count in
////                    Text(countries[count])
////                }
//
//            }.navigationBarTitle("Countries")
                
            //MARK: - Navigation Link
//            List(countryes){ data in
//                NavigationLink(destination: SecondScreen(data: data)) {
//                    Text(data.name)
//                }.navigationTitle("Countries")
//            }
            
            //MARK: - Bar buttons
            Form{
                Section{
                    ForEach(countries, id: \.self) { coountry in
                        Text(coountry)
                    }
                    .onDelete { indexSet in
                        self.countries.remove(atOffsets: indexSet)
                    }
                    .onMove(perform: { indexSet,newIndex in
                        self.countries.insert(self.countries.remove(at: indexSet.first!), at: newIndex)
                    })
                }
                    
                    
            }.navigationTitle("Countries")
                .toolbar {
                    EditButton()
                }
        }
    }
}

struct NavDemo_Previews: PreviewProvider {
    static var previews: some View {
        NavDemo()
    }
}
