//
//  StudentView.swift
//  EJ9
//
//  Created by Tere Rico on 24/10/23.
//

import SwiftUI

struct StudentView: View {
    var id: String
    var name : String
    var email : String
    var major: String
    var color: Color
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {
        LazyVGrid(columns: columns){
            Image("student")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(60)
                .frame(maxWidth: 150, maxHeight: 150)
                .padding(.trailing, 10)
            VStack(alignment: .leading, spacing: 8){
                Text(id + " | " + name)
                    .bold()
                Text(email).font(.footnote)
                Text(major).font(.caption)
            }
        }.padding()
        .background(
            Rectangle()
                .cornerRadius(10)
                .foregroundColor(color))
    }
}

struct StudentView_Previews: PreviewProvider {
    static var previews: some View {
        StudentView(id: "18577", name: "Teresa Lisette Rico Soto", email: "teresa.rico@iest.edu.mx", major: "Licenciatura en Ingeniería en Sistemas y Negocios Digitales (Plan 2016)", color: Color.orange)
    }
}
