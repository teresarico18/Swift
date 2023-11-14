//
//  MyTimer.swift
//  Preferencias
//
//  Created by Tere Rico on 06/11/23.
//

import Foundation

class MyTimer: ObservableObject{
    @Published var num: Int
    var timer = Timer()
    
    init() {
        self.num = 0
    }
    
    func start(){
        //cada 2 segundos aumentara en 1
        self.timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true){
            (timer) in
            self.num = self.num + 1
        }
    }
    
    func stop(){
        timer.invalidate()
    }
}
