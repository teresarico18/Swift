//
//  ContentView.swift
//  ActAPI
//
//  Created by Tere Rico on 14/11/23.
//

import SwiftUI

struct ContentView: View {
   // @StateObject var pokemonList = PokemonListViewModel()
    @EnvironmentObject var randomDog : DogViewModel
    @State var imageURL = "https://tr.rbxcdn.com/2c1bbc92273d35502deae6610c6dc056/420/420/Hat/Png"
    @State var isHappy: Bool = false
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Text(isHappy ? "Here, u go! Happiness in one place" : "Wanna feel happy today?")
                .frame(width: .infinity)
                .font(.title)
                .foregroundColor(Color.purple)
                .bold()
                .multilineTextAlignment(.center)
            
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
                        .frame(width: .infinity , height: isHappy ? 500 : 300 )
                    
                case .failure:
                    //en caso de que no cargue la url
                    Image(systemName: "face")
                        .resizable()
                        .frame(width: .infinity , height: 350 )
                    
                default:
                    EmptyView()
                }
            }
            Spacer()
            Button(action: {
                self.isHappy = true
                randomDog.getRandomDog()
                self.imageURL = randomDog.dog.message
            }){
                Text(isHappy ? "Gimme more!" : "Yes!")
                    .font(.title)
                    .bold()
                    .padding([.leading, .trailing], 30)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(12)
                    .padding(.top, 30)
            }
        }
        .padding()
        .background(Color("Lilac"))
        .frame(width: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(DogViewModel())
    }
}
