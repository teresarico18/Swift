//
//  FixedGridView.swift
//  Listas
//
//  Created by Tere Rico on 23/10/23.
//

import SwiftUI

struct FixedGridView: View {
    let gamesViewModel = GamesViewModel().dummyData()
    let columns = [
        GridItem(.fixed(120)),
        GridItem(.fixed(50)),

    ]
    var body: some View {
        /* vertical */
        /*ScrollView{
            LazyVGrid(columns: columns){
                ForEach(gamesViewModel, id: \.self.uuid){ game in
                    Text(game.name)
                }
            }
        }*/
        /* horizontal */
        ScrollView(.horizontal){
            LazyHGrid(rows: columns){
                ForEach(gamesViewModel, id: \.self.uuid){ game in
                    Text(game.name)
                }
            }
        }
    }
}

struct FixedGridView_Previews: PreviewProvider {
    static var previews: some View {
        FixedGridView()
    }
}
