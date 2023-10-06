//
//  ItemRowView.swift
//  Navegacion
//
//  Created by Tere Rico on 02/10/23.
//

import SwiftUI

struct ItemRowView: View {
    var body: some View {
        HStack  {
            Image("macbook")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
               
            VStack(alignment: .leading){
                Text("Macbook Pro").font(.title)
                Text("$31,899").fontWeight(.semibold).font(.body)
            }
        }
    }
}

struct ItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ItemRowView()
    }
}
