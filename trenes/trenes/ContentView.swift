//
//  ContentView.swift
//  Trenes
//
//  Created by -a.s  on 18/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(){
            VStack(){
                TrenCardView(name: "Reputation", color: Color.black)
                TrenCardView(name: "Lover", color: Color.pink)
                TrenCardView(name: "Midnights", color: Color.blue)
                TrenCardView(name: "Folklore", color: Color.gray)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
