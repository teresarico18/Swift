//
//  ContentView.swift
//  Listas
//
//  Created by Tere Rico on 09/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var gamesViewModel = GamesViewModel().dummyData()
    var body: some View {
        /*
         Metodo 1
         ScrollView(.vertical){
         VStack(alignment: .center){
         ForEach(gamesViewModel) { game in
         CardView(image: game.image, name: game.name, console: game.console, price: String(game.price))
         .padding(.trailing)
         .background(Color("cardColor"))
         .cornerRadius(15)
         .padding(4)
         
         
         }
         }
         }*/
        
        /* Metodo 2
        List(gamesViewModel , id: \.self.uuid) { game in
                  //  ForEach(gamesViewModel) { game in
                        CardView(image: game.image, name: game.name, console: game.console, price: String(game.price))
                            .padding(.trailing)
                            .background(Color("cardColor"))
                            .cornerRadius(15)
                            .padding(4)
                            .listRowInsets(EdgeInsets())
                        
                  //  }
                }.listStyle(PlainListStyle())
        
         */
        
        List() {
            ForEach(gamesViewModel , id: \.self.uuid) { game in
                CardView(image: game.image, name: game.name, console: game.console, price: String(game.price))
                    .padding(.trailing)
                    .background(Color("cardColor"))
                    .cornerRadius(15)
                    .padding(4)
                    .listRowInsets(EdgeInsets())
                
            }.onDelete { (indexSet) in
                self.gamesViewModel.remove(atOffsets: indexSet)
            }
        }.listStyle(PlainListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

