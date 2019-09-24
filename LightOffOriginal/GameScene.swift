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
    
    override func didMove(to view: SKView) {
        
        let novoQuarto = Room1Touch(backgroundNode: SKSpriteNode(imageNamed: "white"), blackBackground: SKSpriteNode(imageNamed: "black"),size: CGSize(width: 100, height: 100), center: CGPoint(x: 0, y: 0), characters: []) //manda gerenciador de fase
        let novoQuarto2 = Room2Touch(backgroundNode: SKSpriteNode(imageNamed: "white"), blackBackground: SKSpriteNode(imageNamed: "black"),size: CGSize(width: 100, height: 100), center: CGPoint(x: 150, y: 0 ), characters: []) // manda gerenciador de fase
        var character = ClockCharacter(skin: SKSpriteNode(imageNamed: "black"), room:  novoQuarto)
        var character2 = ClockCharacter(skin: SKSpriteNode(imageNamed: "black"), room:  novoQuarto2)
        
        novoQuarto2.characters.append(character2)
        novoQuarto.characters.append(character)
        //classe cria quartos
        
        //fabrica
        //gerenciador monta fase
        
        //gerenciador de fases
        
        
//        novoQuarto.characters.append(character)
        self.addChild(novoQuarto.backgroundNode)
        self.addChild(novoQuarto2.backgroundNode)
        roomList.append(novoQuarto)
        roomList.append(novoQuarto2)
       
    }
    
    
    
    func touchDown(atPoint pos : CGPoint) {
        for room in roomList {
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
