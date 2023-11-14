//
//  WelcomeView.swift
//  ActPreferencias
//
//  Created by Tere Rico on 14/11/23.
//

import SwiftUI

struct WelcomeView: View {
    @AppStorage("myName") var myName : String = ""
    @AppStorage("myAge") var myAge : Int = 0
    @AppStorage("myWeight") var myWeight: Double = 0.0 // Almacenamiento como Double
    @AppStorage("myHeight") var myHeight: Double = 0.0
    @AppStorage("myEra") var myEra : String = ""

    var body: some View {
        ZStack{
            Image("wallpaper")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .opacity(0.3)
                .ignoresSafeArea()
                .overlay(
                    VStack{
                        if myName != "" {
                            Text("Hola \(myName)").font(.title)
                        }else{
                            Text("Hola!!").font(.title)
                        }
                        if myAge != 0 {
                            Text("Tu edad es \(myAge)").font(.title)
                        }else {
                            Text("No tenemos tu edad.").font(.title)
                        }
                        if myWeight != 0 {
                            Text("Tu peso es \(myWeight)").font(.title)
                        }else{
                            Text("No tenemos tu peso.").font(.title)
                        }
                        if myHeight != 0 {
                            Text("Tu altura es \(myHeight)").font(.title)
                        }else{
                            Text("No tenemos tu altura.").font(.title)
                        }
                        if myEra != "" {
                            Text("Tu era favorita es \(myEra)").font(.title)
                        }else{
                            Text("No tenemos tu era favorita.").font(.title)
                        }
                    }
                )
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
