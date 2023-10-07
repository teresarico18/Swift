//
//  ContentView.swift
//  Trenes
//
//  Created by -a.s  on 18/09/23.
//

import SwiftUI

struct ContentView: View {
    var avionOpciones : [String] = ["Interjet", "Aeroméxico", "Volaris"]
    var trenOpciones : [String] = ["Urban", "Disney", "Oruga"]
    var autobusOpciones : [String] = ["ETN", "ADO", "Omnibus"]
    
    @State var isPressed : Bool = true
    
    private func printHola() -> String{
        if self.isPressed {
            return "Pressed:)"
        } else {
            return "Not pressed:("
        }
    }
    
    @State var country : String = ""
    
    
    var body: some View {
        VStack{
            
            /*Text("isPressed: \(printHola())")
            TextField("Where do u wanna go? ", text: $country)
            Text("Viajaras a: \(self.country)")
            ScrollView(.horizontal){
                
                HStack{
                    MeansOfTransportView(name: "Reputation", icon: "textformat.size.larger.zh.traditional", isPressed: $isPressed)
                    MeansOfTransportView(name: "Lover", icon: "heart.circle.fill", isPressed: $isPressed)
                    MeansOfTransportView(name: "1989", icon: "building.2.crop.circle", isPressed: $isPressed)
                }
            }*/
            NavigationView{
                ScrollView(){
                    Text("Escoge método de transporte:")

                    VStack(){
                        NavigationLink(destination: TransportDetailView(opciones: trenOpciones), label: {
                            TrenCardView(name: "Tren", color: Color.blue, icon: "tram.circle.fill")
                        })
                        NavigationLink(destination: TransportDetailView(opciones: autobusOpciones), label: {
                            TrenCardView(name: "Autobús", color: Color.pink, icon: "bolt.car.circle")
                        })
                        NavigationLink(destination: TransportDetailView(opciones: avionOpciones), label: {
                            TrenCardView(name: "Avión", color: Color.green, icon: "airplane.circle.fill")
                        })
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
