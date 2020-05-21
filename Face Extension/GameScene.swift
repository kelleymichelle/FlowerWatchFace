//
//  GameScene.swift
//  Face Extension
//
//  Created by Kelley Chaplain on 5/21/20.
//  Copyright © 2020 Kelley Chaplain. All rights reserved.
//

import SpriteKit
class GameScene: SKScene {
//Define SKSpriteNode for watch hands
//var secondHand:SKSpriteNode = SKSpriteNode()
    var minuteHand:SKSpriteNode = SKSpriteNode()
    var hourHand:SKSpriteNode = SKSpriteNode()
    var faceBackground:SKSpriteNode = SKSpriteNode()
//    let faces = []
    
    
    
    
override func sceneDidLoad() {

    if let minHand:SKSpriteNode = self.childNode(withName: "minuteHand") as? SKSpriteNode{
    minuteHand = minHand
    }
    if let hrHand:SKSpriteNode = self.childNode(withName: "hourHand") as? SKSpriteNode{
        
    hourHand = hrHand
    }
}
    
override func update(_ currentTime: TimeInterval) {
    // Called before each frame is rendered
//    faceBackground.SKTexture = UIImage(named: "1.png")
    
    let date = Date()
    let calendar = Calendar.current
    let hour = CGFloat(calendar.component(.hour, from: date))
    let minutes = CGFloat(calendar.component(.minute, from: date))
    //secondHand.zRotation = -1 * deg2rad(seconds * 6)
    minuteHand.zRotation = -1 * deg2rad(minutes * 6)
    hourHand.zRotation = -1 * deg2rad(hour * 30 + minutes/2)
    }
    func deg2rad(_ number: CGFloat) -> CGFloat {
    return number * .pi / 180
}

}
