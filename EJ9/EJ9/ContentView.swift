//
//  ContentView.swift
//  EJ9
//
//  Created by Tere Rico on 23/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var studentsViewModel = StudentsViewModel().dummyData()
    @State var studentName:String = ""
    var columns = Array(repeating: GridItem(.flexible(),spacing: 5), count: 1)

    func search() -> [Student]{
        if !studentName.isEmpty{
            return studentsViewModel.filter {
                $0.name.lowercased().contains( studentName.lowercased())
            }
        }else{
            return studentsViewModel
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack{
                SearchView(studentName: $studentName)
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 15) {
                        //spacing vertical
                        ForEach(search() , id: \.self.uuid) {
                            
                            student in
                            
                            StudentView(id: student.id, name: student.name, email: student.email, major: student.major, color: Color.orange)
                        }
                    }
                }.padding()
            }
        }
        
    }
    /*var body: some View {
        StudentView(id: studentsViewModel[0].id
                    , name: studentsViewModel[0].name, email: studentsViewModel[0].email, major: studentsViewModel[0].major, color: Color.orange)
    }*/
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
