//
//  ArticulosFactory.swift
//  EJ7
//
//  Created by Tere Rico on 09/10/23.
//

import Foundation

struct ArticuloViewModel{
    
    func bebidasData() -> [Articulo] {
        
        let articulos: [Articulo] = [
            Articulo(id: 1, nombre: "Refresco", precio: "$75.00", imagen: "palomitas"),
            Articulo(id: 2, nombre: "ICEE", precio: "$85.00", imagen: "palomitas"),
            Articulo(id: 3, nombre: "Botella de Agua", precio: "$35.00", imagen: "palomitas"),
        ]
        
        return articulos
    }
    
    func alimentosData() -> [Articulo] {
        
        let articulos: [Articulo] = [
            Articulo(id: 4, nombre: "Hot-dog grande", precio: "$60.00", imagen: "palomitas"),
            Articulo(id: 5, nombre: "Hot-dog chico", precio: "$50.00", imagen: "palomitas"),
            Articulo(id: 6, nombre: "Hot-dog integral", precio: "$50.00", imagen: "palomitas"),
        ]
        
        return articulos
    }
    func snacksData() -> [Articulo] {
        
        let articulos: [Articulo] = [
            Articulo(id: 7, nombre: "Nachos chico", precio: "$65.00", imagen: "palomitas"),
            Articulo(id: 8, nombre: "Nachos grandes", precio: "$80.00", imagen: "palomitas"),
            Articulo(id: 9, nombre: "Extra queso", precio: "$15.00", imagen: "palomitas"),
        ]
        
        return articulos
    }
    func postresData() -> [Articulo] {
        
        let articulos: [Articulo] = [
            Articulo(id: 7, nombre: "Skwinkles", precio: "$65.00", imagen: "palomitas"),
            Articulo(id: 8, nombre: "Lifesaver", precio: "$70.00", imagen: "palomitas"),
            Articulo(id: 9, nombre: "Skittles", precio: "$65.00", imagen: "palomitas"),
            Articulo(id: 10, nombre: "Starburst", precio: "$70.00", imagen: "palomitas"),
        ]
        
        return articulos
    }
}

