//
//  ActAPIApp.swift
//  ActAPI
//
//  Created by Tere Rico on 14/11/23.
//

import SwiftUI

@main
struct ActAPIApp: App {
    var sharedViewModel = DogViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(sharedViewModel)
        }
    }
}
