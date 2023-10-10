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
            Articulo(id: 1, nombre: "Refresco", precio: "$75.00", imagen: "refresco"),
            Articulo(id: 2, nombre: "ICEE", precio: "$85.00", imagen: "refresco"),
            Articulo(id: 3, nombre: "Botella de Agua", precio: "$35.00", imagen: "refresco"),
        ]
        
        return articulos
    }
    
    func alimentosData() -> [Articulo] {
        
        let articulos: [Articulo] = [
            Articulo(id: 4, nombre: "Refresco", precio: "$75.00", imagen: "refresco"),
            Articulo(id: 5, nombre: "ICEE", precio: "$85.00", imagen: "refresco"),
            Articulo(id: 6, nombre: "Botella de Agua", precio: "$35.00", imagen: "refresco"),
        ]
        
        return articulos
    }
    func snacksData() -> [Articulo] {
        
        let articulos: [Articulo] = [
            Articulo(id: 7, nombre: "Refresco", precio: "$75.00", imagen: "refresco"),
            Articulo(id: 8, nombre: "ICEE", precio: "$85.00", imagen: "refresco"),
            Articulo(id: 9, nombre: "Botella de Agua", precio: "$35.00", imagen: "refresco"),
        ]
        
        return articulos
    }
    func postresData() -> [Articulo] {
        
        let articulos: [Articulo] = [
            Articulo(id: 7, nombre: "Refresco", precio: "$75.00", imagen: "refresco"),
            Articulo(id: 8, nombre: "ICEE", precio: "$85.00", imagen: "refresco"),
            Articulo(id: 9, nombre: "Botella de Agua", precio: "$35.00", imagen: "refresco"),
        ]
        
        return articulos
    }
}

