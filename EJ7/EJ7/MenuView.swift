//
//  MenuView.swift
//  EJ7
//
//  Created by Tere Rico on 09/10/23.
//

import SwiftUI

struct MenuView: View {
    var title : String
    var image : String
    var color1 : Color
    var color2 : Color
    var body: some View {
        VStack(){
            Image(image).resizable().aspectRatio(contentMode: .fit)
                .padding(.horizontal, 15)
            Text(title).font(.title)
                .foregroundColor(Color.white)
                .bold()
                .italic()
        }.padding(.vertical, 30)
            .background(LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(30)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(title: "ALIMENTOS", image: "hotdog", color1: Color.blue, color2: Color.purple)
    }
}
