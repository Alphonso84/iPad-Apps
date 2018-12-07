//
//  GameScene.swift
//  iPad Apps
//
//  Created by user on 12/7/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        addEmitter()
    }
    
    func addEmitter() {
    
        let emitter = SKEmitterNode(fileNamed: Emitter.rain)!
        emitter.zPosition = Layers.emitter
        emitter.position = CGPoint(x: size.width / 2, y: size.height)
        addChild(emitter)

    }
    
    
    
    
    
}
