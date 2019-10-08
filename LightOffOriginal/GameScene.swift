//
//  GameScene.swift
//  LightOffOriginal
//
//  Created by Pedro Vargas on 19/09/19.
//  Copyright © 2019 Pedro Vargas. All rights reserved.
//

import SpriteKit
import UIKit
import GameplayKit

class GameScene: SKScene {
    
    var roomList: [Room] = []
    var tick = 0
    var maxTick = 60
    var levelRooms: SKSpriteNode!
    var backgroundNode = SKSpriteNode(imageNamed: "background")
    var level = LevelBuilder()
    var controller: GameViewController!
    let progressView = UIProgressView(progressViewStyle: .bar)
    
    var timer : Timer?
       
    var counter = 15 {
        didSet {
            self.label.text = "Time: \(self.counter)"
        }
    }
    var label = SKLabelNode(text: "Score: 15")
    var repeatForever : SKAction!

    

    
    
    //TODO: Criar view de help para cada mundo .xib, falando sobre acender quartos torna o jogo mais dificil, desligar luzes e etc
    
    
    override func didMove(to view: SKView) {
        
        backgroundNode.size = CGSize(width: self.frame.size.width, height: self.frame.size.height)
        backgroundNode.zPosition = 0
        
        roomList = Model.shared.getLevel(world: 0, level: 0)
        
        
        progressView.center = CGPoint(x: 200, y: 100 )
        progressView.setProgress(0, animated: true)
        progressView.trackTintColor = .lightGray
        progressView.tintColor = .blue
        controller.view.addSubview(progressView)
        
        addChild(backgroundNode)
        
        
        for i in roomList {
            i.backgroundNode.zPosition  = 1
            i.blackBackground.zPosition = 2
            backgroundNode.addChild(i.backgroundNode)
        }
        
        self.label.fontSize = 60
        self.addChild(label)
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (Timer) in
            self.counter -= 1
            print(self.counter)
        })
        
        
        self.label.zPosition = 10
        
    }
    
    

    
    func touchDown(atPoint pos : CGPoint) {
        for room in roomList{
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
//
        for room in roomList {
            if room.isOn {
                progressView.progress += (0.075)/60
                //TODO: ajustar calculo da progressView de acordo com quantidade de erros
            }
        }
        
        if progressView.progress > 0.50 {
            progressView.tintColor = .yellow
        }
        else if progressView.progress > 0.70 {
            progressView.tintColor = .red
        }
        
        else if progressView.progress == 1 {
            
        }
        
        if self.counter == 0 {
            timer?.invalidate()
        }
        
//        if self.counter == 0 {
//            counter = 15
//            timer?.invalidate()
//            self.removeAllChildren()
//            self.removeAllActions()
//            self.removeFromParent()
//            backgroundNode.removeAllChildren()
//            Model.shared.level = 1
//            self.controller.performSegue(withIdentifier: "tey", sender: self)
//        }
        
    }
}
