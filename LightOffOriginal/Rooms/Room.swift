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
import AVFoundation

class Room {
    var isOn = true
    var characters : [Character] = []
    var backgroundNode : SKSpriteNode
    var blackBackground : SKSpriteNode // same size of backgroundNode, black color
    var size : CGSize
    var center : CGPoint
    var timer : Timer?
    
    var player : AVAudioPlayer!
    
    var soundOn = Bundle.main.path(forResource: "soundOn", ofType: "mp3")
    var soundOff = Bundle.main.path(forResource: "soundOff", ofType: "mp3")
    
    let on = UIImpactFeedbackGenerator(style: .medium)
    let off = UIImpactFeedbackGenerator(style: .light)
    
    
    
    init(backgroundNode: SKSpriteNode, blackBackground: SKSpriteNode, size: CGSize, center: CGPoint, characters: [Character]) {
        
        self.backgroundNode = backgroundNode
        self.backgroundNode.size = size
        self.backgroundNode.position = center
        
        self.blackBackground = blackBackground
        self.blackBackground.zPosition = 10
        self.blackBackground.size = size
        self.blackBackground.isHidden = true
        self.backgroundNode.addChild(blackBackground)
        
        self.size = size
        self.center = center
        
        self.characters = characters
        
    }
    
    func switchOn() {
        
        do {
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundOn!))
            player.play()
        } catch {}
        on.impactOccurred()
        characters.first?.stopAction()
        //vibra safe
        //som liga
        
    }
    
    func switchOff() {
        do {
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundOff!))
            player.play()
        } catch {}
        off.impactOccurred()
        //vibraforte teyquetinho
        //som desliga
    }
    
    func toggleLight() {
        
    }
    
}
