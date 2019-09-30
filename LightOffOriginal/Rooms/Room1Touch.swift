//
//  Room1Touch.swift
//  LightOffOriginal
//
//  Created by Pedro Vargas on 22/09/19.
//  Copyright © 2019 Pedro Vargas. All rights reserved.
//

import Foundation
import SpriteKit

class Room1Touch : Room {
    

    
    override func switchOff() { // 1 touch
        isOn = false
        self.blackBackground.isHidden = false
        self.characters.first?.action()
    }
    
    override func switchOn() {
        super.switchOn()
        isOn = true
        self.blackBackground.isHidden = true
    }
    
    override func toggleLight() {
        
        if isOn {
            switchOff()
        } else {
            switchOn()
        }
    }
    
}


