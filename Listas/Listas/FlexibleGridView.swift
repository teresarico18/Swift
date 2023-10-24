//
//  FlexibleGridView.swift
//  Listas
//
//  Created by Tere Rico on 23/10/23.
//

import SwiftUI

struct FlexibleGridView: View {
    let gamesViewModel = GamesViewModel().dummyData()
    let columns = [
        GridItem(.flexible(minimum: 50)),
        GridItem(.flexible(minimum: 50)),
        GridItem(.flexible(minimum: 50)),
    ]
    var body: some View {
        /* vertical */
        ScrollView{
            LazyVGrid(columns: columns, spacing: 8){
                ForEach(gamesViewModel, id: \.self.uuid){ game in
                    Text(game.name).background(Color.yellow)
                }
            }
        }
    }
}

struct FlexibleGridView_Previews: PreviewProvider {
    static var previews: some View {
        FlexibleGridView()
    }
}
