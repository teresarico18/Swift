//
//  ContentView.swift
//  Trenes
//
//  Created by -a.s  on 18/09/23.
//

import SwiftUI

struct ContentView: View {
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
            
            Text("isPressed: \(printHola())")
            TextField("Where do u wanna go? ", text: $country)
            Text("Viajaras a: \(self.country)")
            ScrollView(.horizontal){
                
                HStack{
                    MeansOfTransportView(name: "Reputation", icon: "textformat.size.larger.zh.traditional", isPressed: $isPressed)
                    MeansOfTransportView(name: "Lover", icon: "heart.circle.fill", isPressed: $isPressed)
                    MeansOfTransportView(name: "1989", icon: "building.2.crop.circle", isPressed: $isPressed)
                }
            }
            ScrollView(){
                VStack(){
                    TrenCardView(name: "Reputation", color: Color.black)
                    TrenCardView(name: "Lover", color: Color.pink)
                    TrenCardView(name: "Midnights", color: Color.blue)
                    TrenCardView(name: "Folklore", color: Color.gray)
                }.padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
