//
//  ArticuloView.swift
//  EJ7
//
//  Created by Tere Rico on 09/10/23.
//

import SwiftUI

struct ArticuloView: View {
    var title : String
    var image : String
    var price : String
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Image(image).resizable().aspectRatio(contentMode: .fit)
                .padding(.horizontal, 15)
                .padding(.vertical, 30)
                .background(Color("artColor"))
                    .cornerRadius(30)
            Text(title).font(.title)
                .foregroundColor(Color("fontColor"))
                .bold()
                .padding(.top, 20)
            Text(price).font(.title)
                .foregroundColor(Color("fontColor"))
        } 
    }
}

struct ArticuloView_Previews: PreviewProvider {
    static var previews: some View {
        ArticuloView(title: "Hotdog", image: "hotdog", price: "$75.00")
    }
}
