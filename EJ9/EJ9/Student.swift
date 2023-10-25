//
//  Student.swift
//  EJ9
//
//  Created by Tere Rico on 24/10/23.
//

import Foundation

struct Student : Identifiable {
        
    let id: String
    let uuid = UUID()
    let name: String
    let email: String
    let major: String
}
