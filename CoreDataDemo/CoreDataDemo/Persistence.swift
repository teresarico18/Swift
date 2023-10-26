//
//  Persistence.swift
//  CoreDataDemo
//
//  Created by Tere Rico on 25/10/23.
//

import Foundation
import CoreData

struct PersistenceController{
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
    
    init(){
        container = NSPersistentContainer(name: "Games") //nombre del data model creado
        
        container.loadPersistentStores{
            (storeDescription, error) in
            
            if let error = error as NSError? {
                fatalError("Fallo al cargar contenedor: \(error)")
            }
        }
    }
}
