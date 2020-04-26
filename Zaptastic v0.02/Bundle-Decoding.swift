//
//  Bundle-Decoding.swift
//  Zaptastic v0.02
//
//  Created by Bill Jordan on 22/4/20.
//  Copyright © 2020 Bill Jordan. All rights reserved.
//

import Foundation

extension Bundle {
    func decode <T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed to locate \(file) from bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("failed to decode \(file) from bundle.")
        }
    
        return loaded
    }
}
