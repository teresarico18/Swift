//
//  MenuDetailView.swift
//  EJ7
//
//  Created by Tere Rico on 09/10/23.
//

import SwiftUI

struct MenuDetailView: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                ArticuloView(title: "Hotdog", image: "hotdog", price: "$75.00")
                ArticuloView(title: "Hotdog", image: "hotdog", price: "$75.00")
                ArticuloView(title: "Hotdog", image: "hotdog", price: "$75.00")
            }.frame(height: 300)
        }
    }
}

struct MenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuDetailView()
    }
}
