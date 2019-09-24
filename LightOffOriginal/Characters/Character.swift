//
//  Character.swift
//  LightOffOriginal
//
//  Created by Pedro Vargas on 19/09/19.
//  Copyright © 2019 Pedro Vargas. All rights reserved.
//

import Foundation
import SpriteKit

class Character {
    
    var skin : SKSpriteNode!
    var room : Room!
    var timer : Timer!
    
    init(skin: SKSpriteNode, room: Room) {
        self.skin = skin
        self.room = room
    }
    
    func action() {
        
    }
    
    func stopAction() {
        
    }
}
