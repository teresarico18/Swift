//
//  EraCardView.swift
//  EJ4
//
//  Created by Tere Rico on 19/09/23.
//

import SwiftUI

struct EraCardView: View {
    var mood : String
    var img : String
    var logo : String
    var color : Color
    @State private var imgFlag: Bool = true
    var body: some View {
        Button(action: {
            imgFlag.toggle()
        }) {
            HStack{
                Text(imgFlag ? mood : "Listen to...")
                    .font(.largeTitle)
                    .foregroundColor(imgFlag ? color : Color.white)
                    .padding(.horizontal, 10)
                Image(imgFlag ? img : logo).resizable().aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 30)
            }.padding(.horizontal, 10).background(imgFlag ? Color.white.opacity(0.5) : color.opacity(0.5))
                .frame(maxWidth: .infinity)
        }
    }
}

struct EraCardView_Previews: PreviewProvider {
    static var previews: some View {
        EraCardView(
            mood: "Romantic",
            img: "LoverPic",
            logo: "LoverLogo",
            color: Color("LoverPink") )
    }
}
