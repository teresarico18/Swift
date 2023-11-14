//
//  ContentView.swift
//  Preferencias
//
//  Created by Tere Rico on 06/11/23.
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
            TimerView()
                .tabItem(){
                    VStack{
                        Text("Timer")
                        Image(systemName: "timer")
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
