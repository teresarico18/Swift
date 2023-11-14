//
//  FormView.swift
//  ActPreferencias
//
//  Created by Tere Rico on 13/11/23.
//

import SwiftUI

struct FormView: View {
    @AppStorage("myName") var myName : String = ""
    @State var name : String = ""
    @AppStorage("myAge") var myAge : Int = 0
    @State var age : String = ""
    @AppStorage("myWeight") var myWeight: Double = 0.0 // Almacenamiento como Double
    @State var weight: String = ""
    @AppStorage("myHeight") var myHeight: Double = 0.0
    @State var height : String = ""
    @AppStorage("myEra") var myEra : String = ""
    @State var era : String = ""
    
    var body: some View {
        ZStack{
            Image("wallpaper")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .opacity(0.3)
                .ignoresSafeArea()
                .overlay(
                    VStack(){
                        Rectangle()
                        .fill(Color.green)
                        .frame(width: 350, height: 80)
                        .cornerRadius(15)
                        .overlay(
                            HStack {
                                Text("Nombre")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                TextField("Tu nombre", text: $name)
                                    .padding(.horizontal, 10)
                                    .foregroundColor(.white)
                                    .background(Color.clear)
                            }
                        )
                        Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 350, height: 80)
                        .cornerRadius(15)
                        .overlay(
                            HStack {
                                Text("Edad")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                TextField("Tu edad", text: $age)
                                    .padding(.horizontal, 10)
                                    .foregroundColor(.white)
                                    .background(Color.clear)
                                    .keyboardType(.numberPad)
                            }
                        )
                        Rectangle()
                        .fill(Color.purple)
                        .frame(width: 350, height: 80)
                        .cornerRadius(15)
                        .overlay(
                            HStack {
                                Text("Peso")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                TextField("Tu peso", text: $weight)
                                    .padding(.horizontal, 10)
                                    .foregroundColor(.white)
                                    .background(Color.clear)
                                    .keyboardType(.numberPad)
                            }
                        )
                        Rectangle()
                        .fill(Color.red)
                        .frame(width: 350, height: 80)
                        .cornerRadius(15)
                        .overlay(
                            HStack {
                                Text("Altura")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                TextField("Tu altura", text: $height)
                                    .padding(.horizontal, 10)
                                    .foregroundColor(.white)
                                    .background(Color.clear)
                                    .keyboardType(.numberPad)
                            }
                        )
                        Rectangle()
                        .fill(Color.teal)
                        .frame(width: 350, height: 80)
                        .cornerRadius(15)
                        .overlay(
                            HStack {
                                Text("Fav Era")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                TextField("Era", text: $era)
                                    .padding(.horizontal, 10)
                                    .foregroundColor(.white)
                                    .background(Color.clear)
                            }
                        )
                    Button(action:{
                        myName = name
                        myEra = era
                        if let number = Int(age) {
                            myAge = number
                        }
                        if let number = Double(weight) {
                            myWeight = number
                        }
                        if let number = Double(height) {
                            myHeight = number
                        }
                    }){
                        Text("Guardar")
                            .font(.title)
                            .frame(width: 350, height: 80)
                            .background(.white)
                            .cornerRadius(15)
                    }
                    })
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
