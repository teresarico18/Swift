//
//  TrenCardView.swift
//  trenes
//
//  Created by Tere Rico on 18/09/23.
//

import SwiftUI

struct TrenCardView: View {
    var name : String
    var color : Color
    var icon : String
    @State var showAlert : Bool = false
    var body: some View {
        VStack(){

        HStack(){

        Spacer()

        Text("Oferta")

        .padding(.vertical, 4)

        .padding(.horizontal, 12)

        .background(Color.green)

        .foregroundColor(.white)

        .cornerRadius(2)

        .frame( maxWidth: .infinity, alignment: .trailing)

        }

        Image(systemName: icon)
        .padding()
        .font(.system(size: 90, weight: .light, design: .default))

        .foregroundColor(color)

        .aspectRatio(contentMode: .fit )

        .frame(width: 120, height: 100)

        Text(name)

        .font(.largeTitle)

        .lineLimit(1)

        .truncationMode(.middle)

        .padding(.bottom)

        .frame( maxWidth: .infinity)

        }.modifier(CardViewModifier())
            .alert("You era is: \(name)!", isPresented: $showAlert){
                
            }
    }
}

struct TrenCardView_Previews: PreviewProvider {
    static var previews: some View {
        TrenCardView(name: "Taylor", color: Color.green, icon : "tram.circle.fill")
    }
}
