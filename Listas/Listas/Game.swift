//
//  Game.swift
//  Listas
//
//  Created by Tere Rico on 09/10/23.
//

import Foundation

struct Game : Identifiable {
        
    let id: Int
    let uuid = UUID()
    let image: String
    let name: String
    let console: String
    let price: Float
}

