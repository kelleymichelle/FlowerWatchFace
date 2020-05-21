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
    let one = SKTexture(image: #imageLiteral(resourceName: "1.png"))
    let two = SKTexture(image: #imageLiteral(resourceName: "2.png"))
    let three = SKTexture(image: #imageLiteral(resourceName: "3.png"))
    let four = SKTexture(image: #imageLiteral(resourceName: "4.png"))
    let five = SKTexture(image: #imageLiteral(resourceName: "5.png"))
    let six = SKTexture(image: #imageLiteral(resourceName: "6.png"))
    let seven = SKTexture(image: #imageLiteral(resourceName: "7.png"))
    let eight = SKTexture(image: #imageLiteral(resourceName: "8.png"))
    let nine = SKTexture(image: #imageLiteral(resourceName: "9.png"))
    let ten = SKTexture(image: #imageLiteral(resourceName: "10.png"))
    let eleven = SKTexture(image: #imageLiteral(resourceName: "11.png"))
    let twelve = SKTexture(image: #imageLiteral(resourceName: "12.png"))
    
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
//    faceBackground.texture = oneTexture
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
