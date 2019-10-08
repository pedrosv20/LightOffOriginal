//
//  Model.swift
//  LightOffOriginal
//
//  Created by Pedro Vargas on 07/10/19.
//  Copyright © 2019 Pedro Vargas. All rights reserved.
//

import Foundation

class Model {
    
    static let shared = Model()
    
    var worldArray : [World] = []
    
    var world = 0
    var level = 0
    
    private init() {
        //Load worlds from json
        let world1 = World1(name: "Curitiba", levelCount: 2)
        worldArray.append(world1)
        
        
//        if world1.levelArray = nil {
//            world.createLevels
//        }
//        destroy levels
//
//        var world2 = World2(name: "SaoPaulo", levelCount: 2)
//        world2.createLevel()
//        worldArray.append(world2)
        
    }
    
    func getLevel(world: Int, level: Int) -> [Room] {
        worldArray[world].getLevels()
        let rooms = worldArray[world].levelArray[level].roomArray
        return rooms
    }
    
    func destroyLevels(world: Int) {
        
        worldArray[world].destroyLevels()
    
    }
    
}
