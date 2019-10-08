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
    
    
    
    func createLevel(){
        
        let level1 = Level()
        level1.LevelTime = 15
        level1.roomArray = createLevel1()
        self.levelArray.append(level1)
        
    
        let level2 = Level()
        level2.LevelTime = 20
        level2.roomArray = createLevel2()
        self.levelArray.append(level2)
            
            
//        case 3:
//            createLevel3()
//            break
//        case 4:
//            createLevel4()
//            break
//        case 5:
//            createLevel5()
//            break
//        case 6:
//            createLevel6()
//            break
//        case 7:
//            createLevel7()
//            break
//        case 8:
//            createLevel8()
//            break
        
    }
    
    func createLevel1() -> [Room]{
        var x = 0
        var y = -400
        var array : [Room] = []
        
        for i in (1 ..< 3) {
            
            if i % 2 == 0 { x = -200} else { x = 200}
            let room =  Room1Touch(backgroundNode: SKSpriteNode(imageNamed: "white"), blackBackground: SKSpriteNode(imageNamed: "black"), size: CGSize(width: 200, height: 200), center: CGPoint(x: x, y: y), characters: [])
            _ = ClockCharacter(skin: SKSpriteNode(imageNamed: "white"), room: room, size: CGSize(width: 5, height: 5))
            array.append(room)
            if i % 2 == 0 { y += 300 }
            
        }
        return array

    }
    
    func createLevel2() -> [Room] {
        var x = 0
        var y = -400
        var array : [Room] = []
        
        for i in (1 ..< 5) {
            
            if i % 2 == 0 { x = -200} else { x = 200}
            let room =  Room1Touch(backgroundNode: SKSpriteNode(imageNamed: "white"), blackBackground: SKSpriteNode(imageNamed: "black"), size: CGSize(width: 200, height: 200), center: CGPoint(x: x, y: y), characters: [])
            _ = ClockCharacter(skin: SKSpriteNode(imageNamed: "white"), room: room, size: CGSize(width: 5, height: 5))
            array.append(room)
            if i % 2 == 0 { y += 300 }
            
        }
        return array
    }
    
    func createLevel3() -> [Room] {
        _ = 0
        let y = 0
        var array : [Room] = []



        let room =  Room1Touch(backgroundNode: SKSpriteNode(imageNamed: "white"), blackBackground: SKSpriteNode(imageNamed: "black"), size: CGSize(width: 200, height: 200), center: CGPoint(x: -200, y: y), characters: [])
        let _ = ClockCharacter(skin: SKSpriteNode(imageNamed: "white"), room: room, size: CGSize(width: 5, height: 5))

        let room2 =  Room2Touch(backgroundNode: SKSpriteNode(imageNamed: "white"), blackBackground: SKSpriteNode(imageNamed: "black"), size: CGSize(width: 200, height: 200), center: CGPoint(x: 200, y: y), characters: [])
        let _ = ClockCharacter(skin: SKSpriteNode(imageNamed: "white"), room: room2, size: CGSize(width: 5, height: 5))

        let room3 =  Room1Touch(backgroundNode: SKSpriteNode(imageNamed: "white"), blackBackground: SKSpriteNode(imageNamed: "black"), size: CGSize(width: 200, height: 200), center: CGPoint(x: -75, y: 150), characters: [])

        let _ = ClockCharacter(skin: SKSpriteNode(imageNamed: "white"), room: room3, size: CGSize(width: 5, height: 5))

        let room4 =  Room1Touch(backgroundNode: SKSpriteNode(imageNamed: "white"), blackBackground: SKSpriteNode(imageNamed: "black"), size: CGSize(width: 200, height: 200), center: CGPoint(x: 75, y: 150), characters: [])

        let _ = ClockCharacter(skin: SKSpriteNode(imageNamed: "white"), room: room4, size: CGSize(width: 5, height: 5))

        array.append(room)
        array.append(room2)
        array.append(room3)
        array.append(room4)


        return array
    }
//    func createLevel4() -> [Room] {}
//    func createLevel5() -> [Room] {}
//    func createLevel6() -> [Room] {}
//    func createLevel7() -> [Room] {}
//    func createLevel8() -> [Room] {}
    
    
    
    
}
