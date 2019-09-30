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
    var size: CGSize!
    var timer : Timer!
    
    init(skin: SKSpriteNode, room: Room, size: CGSize) {
        self.skin = skin
        self.room = room
        self.skin.size = size
        self.skin.zPosition = 3
        self.room.blackBackground.addChild(skin)
        self.room.characters.append(self)
    }
    
    func action() {
        
    }
    
    func stopAction() {
        
    }
}
