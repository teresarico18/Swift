//
//  MenuDetailView.swift
//  EJ7
//
//  Created by Tere Rico on 09/10/23.
//

import SwiftUI

struct MenuDetailView: View {
    var menu : String
    var articulos : [Articulo]
    var body: some View {
        VStack{
            Text(menu).padding(.leading, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 80)
                .background(Color("fontColor"))
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .padding(.bottom, 10)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(){
                    ForEach(articulos) { articulo in
                        ArticuloView(title: articulo.nombre, image: articulo.imagen, price: articulo.precio)
                            .padding(.trailing)
                            .background(Color("cardColor"))
                            .cornerRadius(15)
                            .padding(4)
                    }
                }
                .frame(height: 300)
                .padding(.leading, 20)
            }
            Spacer()
        }
        
    }
}

struct MenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuDetailView(menu: "Bebidas", articulos: ArticuloViewModel().bebidasData())
    }
}
