//
//  WelcomeView.swift
//  Preferencias
//
//  Created by Tere Rico on 06/11/23.
//

import SwiftUI

struct WelcomeView: View {
    @AppStorage("myName") var myName : String = ""
    @State var name : String = ""
    var body: some View {
        VStack{
            TextField("Su nombre por favor", text: $name)
            Button(action:{
                myName = name
            }){
                Text("Guardar")
            }
            Text("Bienvenid@ \(myName)")
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
