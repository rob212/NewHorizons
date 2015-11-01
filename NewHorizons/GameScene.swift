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
        backgroundColor = UIColor.blackColor()
        addSatelite()
        addInitialAsteroid()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        let touch = touches.first!
        let touchLocation = touch.locationInNode(self)
        moveSatelite(touchLocation)
        rotateAsteroid()
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    func rotateAsteroid() {
        let rotateAction = SKAction.rotateByAngle(1.0, duration: 2.0)
        asteroid.runAction(rotateAction)
    }
    
    func moveSatelite(location: CGPoint) {
        let moveToAction = SKAction.moveTo(location, duration: 1.0)
        satelite.runAction(moveToAction)
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
