//
//  ContentView.swift
//  EJ2
//
//  Created by Tere Rico on 06/09/23.
//

import SwiftUI

/*struct ContentView: View {
    var body: some View {
        Text("welcome_Translized")
            .padding()
    }
}*/

struct ContentView: View {
    let homes = 0
    var body: some View {
        Text("homes_found \(homes)")
            .font(.system(size: 40.0))
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      // 1
      ContentView()
        .environment(\.locale, .init(identifier: "en"))
      // 2
      ContentView()
        .environment(\.locale, .init(identifier: "de"))
    }
  }
}
