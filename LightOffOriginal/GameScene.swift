//
//  GameScene.swift
//  LightOffOriginal
//
//  Created by Pedro Vargas on 19/09/19.
//  Copyright © 2019 Pedro Vargas. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var roomList: [Room] = []
    
    override func didMove(to view: SKView) {
        
        let novoQuarto = Room1Touch(backgroundNode: SKSpriteNode(imageNamed: "white"), blackBackground: SKSpriteNode(imageNamed: "black"),size: CGSize(width: 100, height: 100), center: CGPoint(x: 0, y: 0), characters: [])
        
        var character = ClockCharacter(skin: SKSpriteNode(imageNamed: "black"), room:  novoQuarto)
        novoQuarto.characters.append(character)
        self.addChild(novoQuarto.backgroundNode)
        roomList.append(novoQuarto)
       
    }
    
    
    
    func touchDown(atPoint pos : CGPoint) {
        for room in roomList {
            if room.backgroundNode.contains(pos) {
                if room.isOn {
                    room.switchOff()
                } else {
                    room.switchOn()
                }
            }
        }
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
//        for room in roomList {
//            if !room.isOn {
//                print("boneco entra em açao ") // dispara flag boneco e só reseta quando ele ligar a luz de volta
//            }
//        }
    }
}
