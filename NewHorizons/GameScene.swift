//
//  GameScene.swift
//  NewHorizons
//
//  Created by Robert McBryde on 01/11/2015.
//  Copyright (c) 2015 Robert McBryde. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let satelite = SKSpriteNode(imageNamed: "Sat2")
    let asteroid = SKSpriteNode(imageNamed: "Asteroid")
    
    override func didMoveToView(view: SKView) {
        addSatelite()
        addInitialAsteroid()
        backgroundColor = UIColor.blackColor()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    // MARK: Scene initializations
    
    func addSatelite() {
        satelite.position = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
        addChild(satelite)
    }
    
    func addInitialAsteroid() {
        asteroid.position = CGPoint(x: frame.size.width / 2, y: frame.size.height / 1.3)
        addChild(asteroid)
    }
    
}
