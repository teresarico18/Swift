//
//  TransportDetailView.swift
//  trenes
//
//  Created by Tere Rico on 06/10/23.
//

import SwiftUI

struct TransportDetailView: View {
    var opciones : [String]

    var body: some View {
        ScrollView(){
            VStack(){
                Text("Comprar boletos en:")
                TrenCardView(name: opciones[0], color: Color.black, icon: "ticket.fill")
                TrenCardView(name: opciones[1], color: Color.pink, icon: "ticket.fill")
                TrenCardView(name: opciones[2], color: Color.blue, icon: "ticket.fill")
            }.padding()
                .padding(.top, 30)
        }
    }
}

struct TransportDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TransportDetailView(opciones: ["Opción 1", "Opción 2", "Opción 3"])
    }
}
