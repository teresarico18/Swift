//
//  ContentView.swift
//  HolaMundo
//
//  Created by Tere Rico on 28/08/23.
//

import SwiftUI

struct ContentView: View {
    let spacerSize: CGFloat = 1
    var body: some View {
       
        VStack(alignment: .leading) {
            HStack(spacing: spacerSize) {
                Text("Amarillo").font(.title)
                    .foregroundColor(Color.green)
                Text("Azul").font(.title)
                    .foregroundColor(Color.red)
                Text("Naranja").font(.title)
                    .foregroundColor(Color.blue)
            }
            
            HStack(spacing: spacerSize) {
                Text("NEGRO").font(.largeTitle).background(Color("DarkBlue"))
                    .foregroundColor(Color.white)
                    .padding(.top, 25)
                    .padding(.horizontal, 25)
                Text("ROJO").font(.largeTitle)
                    .background(Color("LightBlue"))
                    .foregroundColor(Color.red)
                    .padding(.top, 25)
            
            }
            HStack(spacing: spacerSize) {
                Text("Verde").font(.title)
                    .padding(.vertical, 10)
                    .background(Color.orange)
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                    .border(Color.blue)
            }
            HStack(spacing: spacerSize) {
                Text("Morado").font(.caption)
                    .padding(.vertical, 10)
                    .bold()
            }
            HStack(spacing: spacerSize) {
                Text("Naranja").font(.title)
                    .padding(.vertical, 20)
                    .underline()
                    .padding(.horizontal, 145)
            }
        }
        /*VStack(alignment: .leading) {
            Text("2ndo").font(.title)
            Text("Izq.")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .foregroundColor(Color.white)
                .background(Color("miFondito"))
                .padding()
                .background(Color.green)
                .lineLimit(2)
                .truncationMode(.tail)
                .cornerRadius(10)
                .shadow(color: Color.black, radius: 25)
            .padding()
            
        
           
            Spacer()
        }*/
        
       
        //.foregroundColor(Color("miFondito"))
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .light)
    }
}
