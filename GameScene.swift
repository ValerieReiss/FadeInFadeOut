//
//  GameScene.swift
//  FadeInFadeOut
//
//  Created by Valerie on 16.03.23.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        CGPointMake(0.5, 0.5)
        let backgroundImage = SKSpriteNode(imageNamed:"background1")
        backgroundImage.zPosition = 1
        backgroundImage.position = .zero
        backgroundImage.size = CGSize(width: 400, height: 400)
        backgroundImage.alpha = 0.0
        addChild(backgroundImage)
        
        let comein = SKAction.fadeIn(withDuration: 3.0)
        let delay = SKAction.wait(forDuration: 0.1)
        let comeout = SKAction.fadeOut(withDuration: 3.0)
        
        let sequence = SKAction.sequence([comein, delay, comeout])
        backgroundImage.run(sequence)
        
    }
    
    override func update(_ currentTime: TimeInterval) {
      
    }
    
}
