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
    var tick = 0
    var maxTick = 60
    var levelRooms: SKSpriteNode!
    var backgroundNode = SKSpriteNode(imageNamed: "background")
    var level = LevelBuilder()
    
    override func didMove(to view: SKView) {
        backgroundNode.size = CGSize(width: self.frame.size.width, height: self.frame.size.height)
        backgroundNode.zPosition = 0
        roomList = level.generateLevel(w: .w1, l: .l1)
        addChild(backgroundNode)
        
        
        for i in roomList {
            i.backgroundNode.zPosition  = 1
            i.blackBackground.zPosition = 2
            backgroundNode.addChild(i.backgroundNode)
        }
        
        //classe cria quartos
        
        //fabrica
        //gerenciador monta fase
        
        //gerenciador de fases
        
        
    }
    
    
    
    func touchDown(atPoint pos : CGPoint) {
        
        for room in roomList{
            if room.backgroundNode.contains(pos) {
                print(room)
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
        //        if tick < maxTick {
        //            tick += 1
        //        } else {
        //            for room in roomList {
        //                if !room.isOn {
        //                    room.characters[0].switchOn()
        //                }
        //            }
        //            tick = 0
        //        }
    }
}
