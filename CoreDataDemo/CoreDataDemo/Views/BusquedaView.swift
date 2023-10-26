//
//  BusquedaView.swift
//  CoreDataDemo
//
//  Created by Tere Rico on 25/10/23.
//

import SwiftUI
import CoreData

struct BusquedaView: View {
    var nombre: String
    var viewContext: NSManagedObjectContext
    @State var coincidencias: [Game]?

    var body: some View {
        
        return VStack {
            List {
                ForEach(coincidencias ?? []) { match in
                    HStack {
                        Text(match.nombre ?? "Not found")
                        Spacer()
                        Text(match.consola ?? "Not found")
                    }
                }
            }
            .navigationTitle("Resultados")
        }
        .task { //Task sirve para hacerlo asincrono
            //let fetchRequest = NSFetchedRequest<Game>(entityName: "Game")
            
            let fetchRequest: NSFetchRequest<Game> = Game.fetchRequest()
            
            fetchRequest.entity = Game.entity()
            fetchRequest.predicate = NSPredicate(
                format: "nombre CONTAINS %@", nombre
            )
            fetchRequest.sortDescriptors = [NSSortDescriptor(key: "nombre", ascending: true)]
            coincidencias = try? viewContext.fetch(fetchRequest)
        }
    }
}

/*
struct BusquedaView_Previews: PreviewProvider {
    
    static var previews: some View {
        BusquedaView(nombre: "Mario", viewContext: nil)
    }
}
*/
