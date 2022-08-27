//
//  WidgetsExample.swift
//  FirstApp
//
//  Created by Ajin on 21/08/22.
//

import SwiftUI


enum Flavours: String{
    case chocolate, vanilla, strawberry
    var id : Self{self}
}
struct WidgetsExample: View {
    @State var selected: Flavours = .chocolate
    @State private var data = 0.0
    @State private var today = Date()
    var body: some View {
        
        VStack{
            
            //MARK: - Picker view
            Picker(selection: $selected, label: Text("Flavour")) {
               Text("chocolate").tag(Flavours.chocolate)
               Text("vanilla").tag(Flavours.vanilla)
               Text("strawberry").tag(Flavours.strawberry)
            }.pickerStyle(.menu)
            
            
            Text(selected.rawValue)
            
            //MARK: - Slider
            
            Slider(value: $data, in: 0...100)
                .padding(.horizontal, 40)
                
            Text("Value is " + String(Int(data)))
            
            //MARK: - Date Picker
        
            
            DatePicker("Calender", selection: $today, displayedComponents: .date)
                .datePickerStyle(.compact)
                .padding(.horizontal, 40)
            
            var data = Calendar.current.component(.day, from: today)
            Text("date is \(data)")
            
            
            //MARK: - Button
            Button("Click") {
                //
            }.foregroundColor(.red)
            
            //MARK: - Custom button
            
            Button(action: {
                
            }) {
                Image(systemName: "trash")
                Text("Trash")
            }.scaleEffect(1.3)
                .buttonStyle(.bordered)
            
            //MARK: - Red button
            Button(action: {
                print("Clicked")
            }) {
                
                Image(systemName: "trash")
                    .font(Font.title)
                
                Text("Trash")
                    .fontWeight(.bold)
                
            }.buttonStyle(.bordered)
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(40.0)
                .padding()
                
            
        }
        
        
        
         
        
    }
}

struct WidgetsExample_Previews: PreviewProvider {
    static var previews: some View {
        WidgetsExample()
    }
}
