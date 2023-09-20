//
//  ContentView.swift
//  EJ4
//
//  Created by Tere Rico on 15/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("wallpaper").resizable()
                .aspectRatio(contentMode: .fill)
                .imageScale(.large)
                .ignoresSafeArea()
                .padding(.trailing, 50)

            VStack {
                Text("How are you feeling today?")
                    .font(.title)
                    .foregroundColor(Color.purple)
                EraCardView(mood: "Romantic", img: "LoverPic", logo: "LoverLogo", color: Color("LoverPink"))
                EraCardView(mood: "Rock Star", img: "RepPic",  logo: "RepLogo", color: Color.black)
                EraCardView(mood: "Cheerful!", img: "1989Pic", logo: "1989Logo", color: Color("1989Blue"))
                EraCardView(mood: "Nostalgic", img: "FolklorePic", logo: "FolkloreLogo", color: Color("FolkloreGray"))
                EraCardView(mood: "Insomnia", img: "MidnightsPic", logo: "MidnightsLogo", color: Color("MidnightsBlue"))
            }.padding(.horizontal, 50)
                .frame(maxWidth: .infinity)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
