//
//  RowView.swift
//  CoreDataDemo
//
//  Created by Tere Rico on 25/10/23.
//

import SwiftUI

struct RowView: View {
    
    var nombre : String
    var consola: String
    
    var body: some View {
        HStack {
            Text(nombre  )
            Spacer()
            Text(consola)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(nombre: "MARIO", consola: "Nintendo")
    }
}
