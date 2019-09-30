//
//  World1.swift
//  LightOffOriginal
//
//  Created by Pedro Vargas on 27/09/19.
//  Copyright © 2019 Pedro Vargas. All rights reserved.
//

import Foundation
import SpriteKit

class World1: World {
    
    func createLevel(i: Int) -> [Room] {
        
        switch(i) {
        case 1:
            let rooms = createLevel1()
            return rooms
        case 2:
            createLevel2()
            break
        case 3:
            createLevel3()
            break
        case 4:
            createLevel4()
            break
        case 5:
            createLevel5()
            break
        case 6:
            createLevel6()
            break
        case 7:
            createLevel7()
            break
        case 8:
            createLevel8()
            break
        default:
            return []
        }
        return []
    }
    
    func createLevel1() -> [Room]{
        var roomArray: [Room] = []
        
        roomArray = createRoom()
        
        return roomArray
    }
    func createLevel2() {}
    func createLevel3() {}
    func createLevel4() {}
    func createLevel5() {}
    func createLevel6() {}
    func createLevel7() {}
    func createLevel8() {}
    
    func createRoom() -> [Room]{
        var x = 0
        var y = 100
        var array : [Room] = []
        
        for i in (1 ..< self.levelCount + 1) {
            //            var room
            let number = Int.random(in: 0...1)
            
            if i % 2 == 0 { x = -100} else { x = 100}
            
            if number == 0 {
                let room =  Room1Touch(backgroundNode: SKSpriteNode(imageNamed: "white"), blackBackground: SKSpriteNode(imageNamed: "black"), size: CGSize(width: 100, height: 100), center: CGPoint(x: x, y: y), characters: [])
                let character = ClockCharacter(skin: SKSpriteNode(imageNamed: "white"), room: room, size: CGSize(width: 5, height: 5))
                
                array.append(room)
                
            } else {
                let room = Room2Touch(backgroundNode: SKSpriteNode(imageNamed: "white"), blackBackground: SKSpriteNode(imageNamed: "black"), size: CGSize(width: 100, height: 100), center: CGPoint(x: x, y: y), characters: [])
                let character = ClockCharacter(skin: SKSpriteNode(imageNamed: "white"), room: room, size: CGSize(width: 6, height: 20))
                
                array.append(room)
                
            }
            
            if i % 2 == 0 {y += 100 }
            
        }
        return array
    }
    
    
}
