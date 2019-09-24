//
//  Room.swift
//  LightOffOriginal
//
//  Created by Pedro Vargas on 19/09/19.
//  Copyright © 2019 Pedro Vargas. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit

class Room {
    var isOn = true
    var characters : [Character] = []
    var backgroundNode : SKSpriteNode!
    var blackBackground : SKSpriteNode! // same size of backgroundNode, black color
    var size : CGSize!
    var center : CGPoint!
    var timer : Timer!
    init(backgroundNode: SKSpriteNode, blackBackground: SKSpriteNode, size: CGSize, center: CGPoint, characters: [Character]) {
        
        self.backgroundNode = backgroundNode
        self.backgroundNode.size = size
        self.backgroundNode.position = center
        
        self.blackBackground = blackBackground
        self.blackBackground.zPosition = 10
        self.blackBackground.size = size
        self.blackBackground.isHidden = true
        self.backgroundNode.addChild(blackBackground)
        
        self.characters = characters
    }
    
    func switchOn() {
        characters.first?.stopAction()
    }
    
    func switchOff() {
        
        
    }
    
    func toggleLight() {
        
    }
    
}
