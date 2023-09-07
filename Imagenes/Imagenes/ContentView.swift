//
//  ContentView.swift
//  Imagenes
//
//  Created by Tere Rico on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("flowers")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .imageScale(.large)
                .foregroundColor(.purple)
            Text("Hello, world!").foregroundColor(Color.white)
                .overlay(Rectangle().foregroundColor(Color.purple).opacity(0.5))
        }.ignoresSafeArea()
//        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
