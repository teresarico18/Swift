//
//  SearchView.swift
//  Listas
//
//  Created by Tere Rico on 23/10/23.
//

import SwiftUI

struct SearchView: View {
    @Binding var gameName : String
        var body: some View {
            HStack(){
                
                TextField("Buscar nombre juego", text: $gameName)
                    .disableAutocorrection(true)
                    .foregroundColor(.black)
                    .padding(.all, 2)
                    
                Image(systemName: "magnifyingglass.circle.fill")
                    .font(.title3)
                    .foregroundColor(Color.gray)
            }
            .overlay(RoundedRectangle(cornerRadius: 15)
                .stroke(Color.blue,lineWidth: 1)
            )
            .padding()
        }

}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
            SearchView(gameName: .constant(""))
        }
}
