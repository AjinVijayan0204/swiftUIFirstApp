//
//  SecondView.swift
//  FirstApp
//
//  Created by Ajin on 27/08/22.
//

import SwiftUI

struct SecondView: View {
    @State var show:Bool = false
    var body: some View {
        Button("Next Screen") {
            show.toggle()
        }
        //sheet presentation
        
        //full screen presentation
//        .fullScreenCover(isPresented: $show) {
//            NextScreen()
        
        //sheet
        .sheet(isPresented: $show) {
            NextScreen()
        }
        
    }
}

struct NextScreen: View{
    @Environment(\.dismiss) var dismiss
    var body: some View{
        
        Button("Go Back") {
            dismiss()
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
