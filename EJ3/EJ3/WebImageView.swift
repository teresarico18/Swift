//
//  WebImageView.swift
//  EJ3
//
//  Created by Tere Rico on 13/09/23.
//

import SwiftUI

struct WebImageView: View {
    let imageURL = "https://i.pinimg.com/originals/15/09/c2/1509c21ee7806237400f6dfbebf1f0be.jpg"
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: imageURL)){
                estadoDeImagen in
                switch estadoDeImagen {
                case .empty:
                    //mientras busca y carga la imagen
                    ProgressView()
                case .success(let image) :
                    //manipulando la imagen descargada
                    image
                        .resizable()
                        .frame(width: 300 , height: 350 )
                        .clipShape(Capsule())
                        .shadow(radius: 20)
                case .failure:
                    //en caso de que no cargue la url
                    Image(systemName: "rep")
                        .imageScale(.large)
                default:
                    EmptyView()
                    
                }
                
            }
            RoundedRectangle(cornerRadius: 25)
                .fill(.black)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70, maxHeight: 110)
                .overlay(
                Text("\"Madre Taylor\" pintura al óleo")
                .font(.largeTitle)
                .foregroundColor(.yellow)
                .multilineTextAlignment(.center)
                ).padding(.horizontal)
        }
    }
}

struct WebImageView_Previews: PreviewProvider {
    static var previews: some View {
        WebImageView()
    }
}
