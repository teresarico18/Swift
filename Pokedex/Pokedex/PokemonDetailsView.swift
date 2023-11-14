//
//  PokemonDetailsView.swift
//  Pokedex
//
//  Created by Tere Rico on 13/11/23.
//

import SwiftUI

struct PokemonDetailsView: View {
    @EnvironmentObject var pokemonList : PokemonListViewModel
    var body: some View {
        Text(pokemonList.pokemon.siguiente)
    }
}

struct PokemonDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailsView().environmentObject(PokemonListViewModel())
    }
}
