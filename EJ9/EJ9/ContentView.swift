//
//  ContentView.swift
//  EJ9
//
//  Created by Tere Rico on 23/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var studentsViewModel = StudentsViewModel().dummyData()
    @State var studentName: String = ""
    @State private var columns: [GridItem] = [GridItem(.flexible())]

    func search() -> [Student] {
        if !studentName.isEmpty {
            return studentsViewModel.filter {
                $0.name.lowercased().contains(studentName.lowercased())
            }
        } else {
            return studentsViewModel
        }
    }

    var body: some View {
        GeometryReader { geometry in
            VStack {
                SearchView(studentName: $studentName)

                ScrollView {
                    LazyVGrid(columns: columns, spacing: 15) {
                        ForEach(search(), id: \.self.uuid) { student in
                            StudentView(id: student.id, name: student.name, email: student.email, major: student.major, color: Color.orange)
                        }
                    }
                }.padding()
            }
        }
        .onAppear {
            NotificationCenter.default.addObserver(forName: UIDevice.orientationDidChangeNotification, object: nil, queue: .main) { _ in
                handleOrientationChange()
            }
            handleOrientationChange()
        }
    }

    private func handleOrientationChange() {
        if UIDevice.current.orientation.isPortrait {
            columns = [GridItem(.flexible())]
        } else {
            columns = [GridItem(.flexible()), GridItem(.flexible())]
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
