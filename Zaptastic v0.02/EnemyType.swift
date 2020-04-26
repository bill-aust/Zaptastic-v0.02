//
//  EnemyType.swift
//  Zaptastic v0.02
//
//  Created by Bill Jordan on 22/4/20.
//  Copyright © 2020 Bill Jordan. All rights reserved.
//

import SpriteKit

struct EnemyType: Codable {
    let name: String
    let shields: Int
    let speed: CGFloat
    let powerUpChance: Int
}
