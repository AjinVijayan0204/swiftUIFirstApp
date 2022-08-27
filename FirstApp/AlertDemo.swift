//
//  AlertDemo.swift
//  FirstApp
//
//  Created by Ajin on 27/08/22.
//

import SwiftUI

struct AlertDemo: View {
    @State var showAlert: Bool
    var body: some View {
        
        Button(action: {
            showAlert = true
            
        }, label: {
            Text("Show Alert")
        }).buttonStyle(.bordered)
            .cornerRadius(20)
            .alert("Alert Title", isPresented: $showAlert, actions: {
                Button(role: .none, action: {}, label: {Text("Ok")})
                Button(role: .cancel, action: {}, label: {Text("Cancel")})
//                Button(role: .destructive, action: {}, label: {Text("Delete")})
            }, message: {
                Text("Body of alert")
                
            })
    }
}
    



struct AlertDemo_Previews: PreviewProvider {
    static var previews: some View {
        AlertDemo(showAlert: true)
    }
}
