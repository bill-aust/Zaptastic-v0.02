//
//  Wave.swift
//  Zaptastic v0.02
//
//  Created by Bill Jordan on 23/4/20.
//  Copyright © 2020 Bill Jordan. All rights reserved.
//

import SpriteKit

struct Wave: Codable {
    struct WaveEnemy: Codable {
        let position: Int
        let xOffset: GLfloat
        let moveStraight: Bool
    }
    
    let name: String
    let enemies: [WaveEnemy]
}
