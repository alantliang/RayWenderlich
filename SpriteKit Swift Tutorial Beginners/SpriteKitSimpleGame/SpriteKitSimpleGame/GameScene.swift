//
//  GameScene.swift
//  SpriteKitSimpleGame
//
//  Created by Alan Liang on 12/11/14.
//  Copyright (c) 2014 fsa. All rights reserved.
//

// Tutorial for http://www.raywenderlich.com/84434/sprite-kit-swift-tutorial-beginners

import SpriteKit

class GameScene: SKScene {
    
    // 1
    let player = SKSpriteNode(imageNamed: "player")
    
    override func didMoveToView(view: SKView) {
        // 2
        backgroundColor = SKColor.whiteColor()
        // 3
        player.position = CGPoint(x: size.width * 0.1, y: size.height * 0.5)
        // 4
        addChild(player)
    }
}