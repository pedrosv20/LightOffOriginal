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
            
            self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: false, block: { (Timer) in
                self.backgroundNode.colorBlendFactor = 0
                self.backgroundNode.color = .white
                self.touches = 0
            })
            
        }
        
        if touches == 2 {
            timer?.invalidate()
            self.isOn = false
            self.blackBackground.isHidden = false
            self.characters.first?.action()
        }
    }
    
    override func switchOn() {
        super.switchOn()
        
        isOn = true
        self.touches = 0
        self.backgroundNode.color = .white
        self.backgroundNode.colorBlendFactor = 0
        self.blackBackground.isHidden = true

        
        
    }
    
    override func toggleLight() {
        
    }
    
    
    
}
