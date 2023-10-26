//
//  ContentView.swift
//  CoreDataDemo
//
//  Created by Tere Rico on 25/10/23.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var nombre : String = ""
    @State var consola: String = ""
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: Game.entity(),
                  sortDescriptors: [NSSortDescriptor(key: "nombre", ascending: true)] )
    //ordenado por nombre ascendente
    private var games: FetchedResults<Game>
    
    
    var body: some View {
        NavigationView {
                   VStack {
                       TextField("Nombre del Juego", text: $nombre).disableAutocorrection(true)
                       TextField("Consola", text: $consola).disableAutocorrection(true)
                       
                       HStack {
                           Spacer()
                           Button("Agregar") {
                               agregarJuego()
                               limpiar()
                           }
                           Spacer()
                           
                           NavigationLink(destination: BusquedaView(nombre: nombre, viewContext: viewContext)) {
                                     Text("Buscar")
                                 }
                           
                           Spacer()
                           Button("Limpiar") {
                              limpiar()
                           }
                           Spacer()
                       }
                       .padding()
                       .frame(maxWidth: .infinity)
                       
                       List {
                           ForEach(games) { juego in
                               
                               NavigationLink(destination: EditarView(miJuego: juego)) {
                                   
                                   RowView(nombre: juego.nombre ?? "" , consola: juego.consola ?? "")
                                   
                               }
                           }
                           .onDelete(perform: borrarJuegos)
                       }
                       .navigationTitle("Games Database")
                   }
                   .padding()
                   .textFieldStyle(RoundedBorderTextFieldStyle())
               }
    }
    
    private func limpiar(){
        nombre = ""
        consola = ""
    }
    
    private func agregarJuego(){
        withAnimation{
            GameModel(context: self.viewContext).add(nombre: nombre, consola: consola)
        }
    }
    
    //offsets es position of the items selected
    private func borrarJuegos(offsets: IndexSet){
        withAnimation {
            GameModel(context: self.viewContext).delete(miJuego: games[offsets.first!])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
