//
//  ContentView.swift
//  Navegacion
//
//  Created by Tere Rico on 02/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{   
            NavigationLink(destination: ItemDetailsView(), label: {
               ItemRowView()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
