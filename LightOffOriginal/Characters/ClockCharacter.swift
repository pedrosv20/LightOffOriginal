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
            
            timer = Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false, block: { (Timer) in
                self.room.switchOn()
                print("ligou")
            })
        }
    }
    
    override func stopAction() {
        timer?.invalidate()
    }
    
    
}
