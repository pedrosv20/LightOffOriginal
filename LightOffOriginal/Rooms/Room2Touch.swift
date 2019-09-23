//
//  Room2Touch.swift
//  LightOffOriginal
//
//  Created by Pedro Vargas on 23/09/19.
//  Copyright © 2019 Pedro Vargas. All rights reserved.
//

import Foundation
import SpriteKit

class Room2Touch : Room{
    
    var touches = 0
    
    override func switchOff() {
        self.touches += 1
        
        if touches == 1 {
            self.backgroundNode.colorBlendFactor = 1
            self.backgroundNode.color = .gray
            
        }
        
        if touches == 2 {
            self.isOn = false
            self.blackBackground.isHidden = false
        }
        
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: false, block: { (Timer) in
            self.backgroundNode.color = .white
            self.backgroundNode.colorBlendFactor = 0
            self.touches = 0
            self.switchOn()
        })
        
        
        
        
    }
    
    override func switchOn() {
        isOn = true
        self.touches = 0
        if self.timer != nil {
            timer.invalidate()
        }
        
        self.blackBackground.isHidden = true
    }
    
    override func toggleLight() {
        
    }
    
    
    
}
