//
//  MeansOfTransportView.swift
//  trenes
//
//  Created by Tere Rico on 25/09/23.
//

import SwiftUI

struct MeansOfTransportView: View {
    var name : String
    var icon : String
    @Binding var  isPressed : Bool
    
    var body: some View {
        Label(name, systemImage: icon)
            .onTapGesture {
                withAnimation(){
                    self.isPressed.toggle()
                }
            }.scaleEffect(isPressed ? 2.5 : 1.0)
            .rotationEffect(isPressed ? .degrees(180) : .degrees(0))
            .modifier(CardViewModifier())
    }
}

struct MeansOfTransportView_Previews: PreviewProvider {
    static var previews: some View {
        MeansOfTransportView(name: "Boat", icon: "sailboat.circle.fill", isPressed: .constant(false))
    }
}
