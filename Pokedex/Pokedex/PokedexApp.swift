//
//  PokedexApp.swift
//  Pokedex
//
//  Created by Tere Rico on 13/11/23.
//

import SwiftUI

@main
struct ApiApp: App {
    var sharedViewModel = PokemonListViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(sharedViewModel)
        }
    }
}
