//
//  ContentView.swift
//  EJ3
//
//  Created by Tere Rico on 11/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            /*Image(systemName: "person.3.sequence.fill")
                .font(.system(size:80))
                .imageScale(.large)
                .foregroundColor(.green)
                .accentColor(.purple)
                .shadow(color: .blue, radius: 10, x:10, y:10)
            Text("3 personas")
                .font(.system(size:20, weight: .bold, design: .rounded))
                .padding(.horizontal)
                .foregroundColor(Color.white)
                .background(Color.black).opacity(0.5)
                .cornerRadius(8)
                .offset(y:25)*/
            Image("rep")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .overlay(
                    Text("Reputation")
                        .font(.title)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .foregroundColor(Color.red)
                        .background(Color.white).opacity(0.8)
                        .cornerRadius(8)
                        .offset(y: 25)
                )
                
        }
        .padding()
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
