//
//  World.swift
//  LightOffOriginal
//
//  Created by Pedro Vargas on 27/09/19.
//  Copyright © 2019 Pedro Vargas. All rights reserved.
//

import Foundation
import SpriteKit

class World {
    
    var name: String
    var levelCount: Int
    
    init(name: String, levelCount: Int) {
        self.name = name
        self.levelCount = levelCount
    }
}
