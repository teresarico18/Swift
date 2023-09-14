//
//  ContentView.swift
//  HolaMundo
//
//  Created by Tere Rico on 28/08/23.
//

import SwiftUI

struct ContentView: View {
    let spacerSize: CGFloat = 1
    let darkBlue: Color = Color("DarkBlue")
    let radius: CGFloat = 15
    var body: some View {
       
        ZStack{
            Image("cats")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .overlay(
                    VStack(alignment: .leading) {
                        HStack(spacing: spacerSize) {
                            VStack(alignment: .leading) {
                                Image(systemName: "pencil.circle.fill")
                                .font(.system(size:40))
                                .imageScale(.large)
                                .foregroundColor(.green)
                                Text("Amarillo").font(.title)
                                    .foregroundColor(Color.green)
                            }
                            VStack(alignment: .leading) {
                                Image(systemName: "folder.fill")
                                .font(.system(size:40))
                                .imageScale(.large)
                                .foregroundColor(.red)
                                Text("Azul").font(.title)
                                    .foregroundColor(Color.red)
                            }
                            VStack(alignment: .leading) {
                                Image(systemName: "staroflife.fill")
                                .font(.system(size:40))
                                .imageScale(.large)
                                .foregroundColor(.blue)
                                Text("Naranja").font(.title)
                                    .foregroundColor(Color.blue)
                            }
                        }.padding(.horizontal, 90)
                        
                        HStack(spacing: spacerSize) {
                            Text("NEGRO").font(.largeTitle).background(darkBlue)
                                .foregroundColor(Color.white)
                                .padding(.top, 25)
                                .padding(.horizontal, 25)
                            Image("tay")
                                .resizable()
                                .frame(width: 100 , height: 100)
                            Text("ROJO").font(.largeTitle)
                                .background(Color("LightBlue"))
                                .foregroundColor(Color.red)
                                .padding(.top, 25)
                        
                        }.padding(.horizontal, 80)
                        HStack(spacing: spacerSize) {
                            Text("Verde").font(.title)
                                .background(Color.gray)
                                .padding(.vertical, 15)
                                .padding(.trailing, 70)
                                .foregroundColor(Color.white)
                                .frame(maxWidth: .infinity)
                                .background(Color.orange)
                                .border(Color.blue)
                                .cornerRadius(radius)
                        }.padding(.horizontal, 70)
                        HStack(spacing: spacerSize) {
                            Text("Morado").font(.caption)
                                .padding(.vertical, 10)
                                .bold()
                        }
                        HStack(spacing: spacerSize) {
                            Text("Naranja").font(.title)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 20)
                                .underline()
                                .padding([.horizontal, .trailing], 150)
                                .truncationMode(.tail)
                        }
                    }
                )
        }
        .ignoresSafeArea()
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
