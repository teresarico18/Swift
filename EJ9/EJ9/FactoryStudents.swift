//
//  FactoryStudents.swift
//  EJ9
//
//  Created by Tere Rico on 24/10/23.
//

import Foundation

struct StudentsViewModel{
    
    func dummyData() -> [Student] {
        
        let students: [Student] = [
            Student(id: "18193", name: "Ivan Alessandro Ham Garza", email: "ivan.ham@iest.edu.mx", major: "Licenciatura en Ingeniería en Sistemas y Negocios Digitales (Plan 2016)"),
            Student(id: "18577", name: "Teresa Lisette Rico Soto", email: "teresa.rico@iest.edu.mx", major: "Licenciatura en Ingeniería en Sistemas y Negocios Digitales (Plan 2016)"),
            Student(id: "18666", name: "Andrea Sosa Salazar", email: "andrea.sosa01@iest.edu.mx", major: "Licenciatura en Ingeniería en Sistemas y Negocios Digitales (Plan 2016)"),
            Student(id: "18809", name: "Humberto Cabrera Cavazos", email: "humberto.cabrera@iest.edu.mx", major: "Licenciatura en Ingeniería en Sistemas y Negocios Digitales (Plan 2016)"),
            
        ]
        
        return students
    }
}
