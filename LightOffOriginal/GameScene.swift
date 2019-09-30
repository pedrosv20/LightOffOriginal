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
    var levelBuilder = Level()
    var levelRooms: SKSpriteNode!
    var world =  World1(name: "CURITIBA", levelCount: 8)
    
    override func didMove(to view: SKView) {
        //        var createdLevel =
        //        roomList = Level.createLevel(level: .l1)
        //
        //        for i in roomList {
        //            addChild(i.backgroundNode)
        //        }
        roomList = world.createLevel(i: 1)
        for i in roomList {
            addChild(i.backgroundNode)
        }
        
        //classe cria quartos
        
        //fabrica
        //gerenciador monta fase
        
        //gerenciador de fases
        
        
        //        novoQuarto.characters.append(character)
        //        self.addChild(novoQuarto.backgroundNode)
        //        self.addChild(novoQuarto2.backgroundNode)
        //        roomList.append(novoQuarto)
        //        roomList.append(novoQuarto2)
        
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
