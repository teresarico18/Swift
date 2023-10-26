//
//  CoreDataDemoApp.swift
//  CoreDataDemo
//
//  Created by Tere Rico on 25/10/23.
//

import SwiftUI
 
@main
struct CoreDataDemoApp: App {
    //colocarlo como variable de entorno disponible para todas las views
    let persistenceController = PersistenceController.shared
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
