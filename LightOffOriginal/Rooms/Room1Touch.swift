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
    
    
    override func switchOff() {
        
        isOn = false
        self.blackBackground.isHidden = false
        
        self.timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { (Timer) in
            self.switchOn()
        }
    }
    
    override func switchOn() {
        
        if timer != nil {
            timer.invalidate()
        }
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
