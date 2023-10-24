//
//  GeometryView.swift
//  Listas
//
//  Created by Tere Rico on 23/10/23.
//

import SwiftUI

struct GeometryView: View {
    var body: some View {
        GeometryReader(){ geometry in
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(width: geometry.size.width/2, height: geometry.size.height / 4)
                .background(Color.orange)
        }
    }
}

struct GeometryView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryView()
    }
}
