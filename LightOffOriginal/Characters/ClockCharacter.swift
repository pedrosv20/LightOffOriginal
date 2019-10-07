//
//  ClockCharacter.swift
//  LightOffOriginal
//
//  Created by Pedro Vargas on 22/09/19.
//  Copyright © 2019 Pedro Vargas. All rights reserved.
//

import Foundation
import SpriteKit

class ClockCharacter : Character {
    
    override func action() {
        
        if !room.isOn {
            
            timer = Timer.scheduledTimer(withTimeInterval: Double.random(in: 0.4 ..< 4), repeats: false, block: { (Timer) in
                self.room.switchOn()
            })
        }
    }
    
    override func stopAction() {
        timer?.invalidate()
    }
    
    
}
