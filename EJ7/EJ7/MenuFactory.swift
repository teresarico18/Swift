//
//  MenuFactory.swift
//  EJ7
//
//  Created by Tere Rico on 09/10/23.
//

import Foundation
import SwiftUI

struct MenuViewModel{
    
    func menuData() -> [Menu] {
        
        let menus: [Menu] = [
            Menu(id: 1, titulo: "BEBIDAS", color1: Color.blue, color2: Color.purple, image: "palomitas"),
            Menu(id: 1, titulo: "ALIMENTOS", color1: Color.yellow, color2: Color.orange, image: "hotdog"),
            Menu(id: 1, titulo: "SNACKS", color1: Color.cyan, color2: Color.green, image: "nachos"),
            Menu(id: 1, titulo: "POSTRES", color1: Color.pink, color2: Color.purple, image: "dulces"),

        ]
        
        return menus
    }
}
