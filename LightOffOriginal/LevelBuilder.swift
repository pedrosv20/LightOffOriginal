//
//  Level.swift
//  LightOffOriginal
//
//  Created by Pedro Vargas on 25/09/19.
//  Copyright © 2019 Pedro Vargas. All rights reserved.
//

import Foundation
import SpriteKit

class LevelBuilder {
    
    enum LEVELS {
        case l1
        case l2
        case l3
        case l4
        case l5
        case l6
        case l7
        case l8
    }
    
    enum WORLDS {
        case w1
    }
    
    // ou enum ou int se for mais facil para trocar de fase
    func generateLevel(w: WORLDS, l: LEVELS) -> [Room]{
        var room : [Room] = []
        
        switch (w){
            case .w1:
                
                var world = World1(name: "teste1", levelCount: 2)
                switch(l){
                    case .l1:
                        room = world.createLevel(i: 1)
                        return room
                    case .l2:
                        room = world.createLevel(i:2)
                        return room
                    
                    default: break
            }
        }
    return []
    }
}


