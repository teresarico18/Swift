//
//  ContentView.swift
//  EJ7
//
//  Created by Tere Rico on 06/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var menuViewModel = MenuViewModel().dummyData()

    var body: some View {
        NavigationView{
            VStack {
                HStack {
                    NavigationLink(destination: MenuDetailView(), label: { MenuView(title: menuViewModel[0].titulo, image: menuViewModel[0].image, color1: menuViewModel[0].color1, color2: menuViewModel[0].color2)
                    })
                    NavigationLink(destination: MenuDetailView(), label: { MenuView(title: menuViewModel[1].titulo,image: menuViewModel[1].image, color1: menuViewModel[1].color1, color2: menuViewModel[1].color2)
                    })
                }
                HStack {
                    NavigationLink(destination: MenuDetailView(), label: { MenuView(title: menuViewModel[2].titulo,image: menuViewModel[2].image, color1: menuViewModel[2].color1, color2: menuViewModel[2].color2)
                    })
                    NavigationLink(destination: MenuDetailView(), label: { MenuView(title: menuViewModel[3].titulo,image: menuViewModel[3].image, color1: menuViewModel[3].color1, color2: menuViewModel[3].color2)
                    })
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
