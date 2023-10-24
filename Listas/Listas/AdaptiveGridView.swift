//
//  AdaptiveGridView.swift
//  Listas
//
//  Created by Tere Rico on 23/10/23.
//

import SwiftUI

struct AdaptiveGridView: View {
    let gamesViewModel = GamesViewModel().dummyData()
    let columns = [
        GridItem(.adaptive(minimum: 50), spacing: 8)
    ]
    var body: some View {
        /* vertical */
        ScrollView{
            LazyVGrid(columns: columns){
                ForEach(gamesViewModel, id: \.self.uuid){ game in
                    Text(game.name)
                }
            }
        }
    }
}

struct AdaptiveGridView_Previews: PreviewProvider {
    static var previews: some View {
        AdaptiveGridView()
    }
}
