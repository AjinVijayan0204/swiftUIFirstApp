//
//  ListDemo.swift
//  FirstApp
//
//  Created by Ajin on 27/08/22.
//

import SwiftUI

//not for using id in for each
struct Country: Identifiable{
    var id = UUID()
    var name:String
}

struct ListDemo: View {
    @State var countries = ["Armenia", "Albenia", "America", "Chile", "Denmark", "Finland", "India", "Swizz"]
    
    var countryies = [Country( name: "Armenia"),Country( name: "Albenia"),Country( name: "America"),Country( name: "Chile"),Country( name: "Denmark"),Country( name: "Finland"),Country( name: "India")]
    
    @State var entry:String = ""
    
    var body: some View {
        
        VStack{
            List{
                ForEach(countries,id: \.self){country in
                    
                    HStack{
                        Image(systemName: "person.circle.fill")
                        Spacer()
                        Text(country)
                        Spacer()
                        Image(systemName: "circle")
                    }
                    
                }.onDelete(perform: deleteItem)
                    
            }
            
            TextField("Country", text: $entry)
            Button("Add") {
                countries.append(entry)
            }
        }
        
        
        
    }
    private func deleteItem(at indexSet: IndexSet) {
            self.countries.remove(atOffsets: indexSet)
        }
    
}

struct ListDemo_Previews: PreviewProvider {
    static var previews: some View {
        ListDemo()
    }
}
