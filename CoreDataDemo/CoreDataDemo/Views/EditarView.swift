//
//  EditarView.swift
//  CoreDataDemo
//
//  Created by Tere Rico on 25/10/23.
//

import SwiftUI

struct EditarView: View {
   @Environment(\.managedObjectContext) private var viewContext
   @Environment(\.presentationMode) var atras
    var miJuego : Game
    @State private var nombre = ""
    @State private var consola = ""
    
    var body: some View {
        VStack {
            TextField("Nombre del Juego", text: self.$nombre)
                .disableAutocorrection(true)
                .padding(10)
                .onAppear{
                    self.nombre = self.miJuego.nombre ?? ""
            }
            TextField("Consola", text: self.$consola)
                .disableAutocorrection(true)
                .padding(10)
                .onAppear{
                    self.consola = self.miJuego.consola ?? ""
            }
            Button(action: {
               editarJuego()
            }){
                HStack{
                    Image(systemName: "pencil")
                        .foregroundColor(.white)
                        .font(.title)
                    Text("Editar juego")
                        .foregroundColor(.white)
                        .font(.title)
                }
            }.padding(10)
                .background(Color.blue).cornerRadius(5)
            Spacer()
            .navigationBarTitle("Editar juego")
        }
    }
    
    
    private func editarJuego(){
        withAnimation{
            let success = GameModel(context: viewContext).edit(miJuego: miJuego, nombre: nombre, consola: consola)
            if success {
                self.atras.wrappedValue.dismiss()
            }
        }
    }
 
}

struct EditarView_Previews: PreviewProvider {
    static var previews: some View {
        EditarView( miJuego: Game())
    }
}
