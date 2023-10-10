//
//  Articulo.swift
//  EJ7
//
//  Created by Tere Rico on 09/10/23.
//

import Foundation

struct Articulo : Identifiable {
        
    let id: Int
    let uuid = UUID()
    let nombre: String
    let precio: String
    let imagen: String

}
