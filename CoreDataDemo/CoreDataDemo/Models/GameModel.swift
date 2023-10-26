//
//  GameModel.swift
//  CoreDataDemo
//
//  Created by Tere Rico on 25/10/23.
//

import Foundation
import CoreData


class GameModel {
    
    
    var viewContext : NSManagedObjectContext
    
    init(context : NSManagedObjectContext){
        self.viewContext = context
    }
    
    func edit(miJuego: Game, nombre: String, consola: String) -> Bool{
        miJuego.nombre = nombre
        miJuego.consola = consola
        return saveChanges()
    }
    
     func add(nombre: String, consola: String){
            let juego = Game(context:viewContext)
            //hacemos una nueva instancia Game entity y asinamos los valores de nombre y consola a las propiedades respectivas
            juego.nombre = nombre
            juego.consola = consola
            saveChanges()
    }
    
    func delete(miJuego: Game){
        viewContext.delete(miJuego)
        saveChanges()
    }

     func saveChanges() -> Bool {
           do {
               try self.viewContext.save()
               return true
           } catch {
               let error = error as NSError
               fatalError("An error occured: \(error)")
               //print("Error al guardar", error.localizedDescription)
               return false
           }
    }
}
