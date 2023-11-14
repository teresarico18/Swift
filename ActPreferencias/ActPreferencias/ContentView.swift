//
//  ContentView.swift
//  ActPreferencias
//
//  Created by Tere Rico on 13/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            WelcomeView()
                .tabItem(){
                    VStack{
                        Text("Inicio")
                        Image(systemName: "house.fill")
                    }
                }
            FormView()
                .tabItem(){
                    VStack{
                        Text("Inicio")
                        Image(systemName: "info.circle.fill")
                    }
                }
        }
        .accentColor(Color.purple)
        .padding()
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
