//
//  ContentView.swift
//  Pokedex
//
//  Created by Tere Rico on 13/11/23.
//

import SwiftUI

struct ContentView: View {
   // @StateObject var pokemonList = PokemonListViewModel()
    @EnvironmentObject var pokemonList : PokemonListViewModel
    
    var body: some View {
        NavigationView(){
            VStack {
                
                Text("\(pokemonList.pokemon.count)")
                Text(pokemonList.pokemon.siguiente)
                Text(pokemonList.pokemon.previous ?? "")
                
                
                List(){
                    ForEach(pokemonList.pokemon.results, id: \.self){  pokemon in
                        
                        NavigationLink(destination: PokemonDetailsView()){
                            VStack{
                                Text(pokemon.name)
                                Text(pokemon.url)
                            }
                        }
                    }
                }
            }
            
            .padding()
            .onAppear(){
                //pokemonList.getPokemonList()
                pokemonList.getPokemonList()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()  .environmentObject(PokemonListViewModel())
    }
}
