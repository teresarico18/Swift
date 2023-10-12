//
//  ContentView.swift
//  EJ7
//
//  Created by Tere Rico on 06/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var menus = MenuViewModel().menuData()

    var body: some View {
        NavigationView{
            VStack() {
                Text("Bienvenido,")
                    .padding(.leading, 20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 80)
                    .background(Color("fontColor"))
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .padding(.bottom, 10)
                HStack{
                    NavigationLink(destination: MenuDetailView(menu: "Bebidas", articulos: ArticuloViewModel().bebidasData()), label: { MenuView(title: menus[0].titulo, image: menus[0].image, color1: menus[0].color1, color2: menus[0].color2)
                    })
                    NavigationLink(destination: MenuDetailView(menu: "Alimentos", articulos: ArticuloViewModel().alimentosData()), label: { MenuView(title: menus[1].titulo,image: menus[1].image, color1: menus[1].color1, color2: menus[1].color2)
                    })
                }.padding()
                HStack {
                    NavigationLink(destination: MenuDetailView(menu: "Snacks", articulos: ArticuloViewModel().snacksData()), label: { MenuView(title: menus[2].titulo,image: menus[2].image, color1: menus[2].color1, color2: menus[2].color2)
                    })
                    NavigationLink(destination: MenuDetailView(menu: "Postres", articulos: ArticuloViewModel().postresData()), label: { MenuView(title: menus[3].titulo,image: menus[3].image, color1: menus[3].color1, color2: menus[3].color2)
                    })
                }.padding()
                Spacer()
            }
                .frame(maxHeight: .infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
