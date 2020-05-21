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

//    let one = SKTexture(image: #imageLiteral(resourceName: "1.png"))
//    let two = SKTexture(image: #imageLiteral(resourceName: "2.png"))
//    let three = SKTexture(image: #imageLiteral(resourceName: "3.png"))
//    let four = SKTexture(image: #imageLiteral(resourceName: "4.png"))
//    let five = SKTexture(image: #imageLiteral(resourceName: "5.png"))
//    let six = SKTexture(image: #imageLiteral(resourceName: "6.png"))
//    let seven = SKTexture(image: #imageLiteral(resourceName: "7.png"))
//    let eight = SKTexture(image: #imageLiteral(resourceName: "8.png"))
//    let nine = SKTexture(image: #imageLiteral(resourceName: "9.png"))
//    let ten = SKTexture(image: #imageLiteral(resourceName: "10.png"))
//    let eleven = SKTexture(image: #imageLiteral(resourceName: "12.png"))
//    let twelve = SKTexture(image: #imageLiteral(resourceName: "12.png"))
    
    let newTexture = SKTexture(imageNamed: "1")
    
    override func sceneDidLoad() {

        if let minHand:SKSpriteNode = self.childNode(withName: "minuteHand") as? SKSpriteNode{
            minuteHand = minHand
        }
        
        if let hrHand:SKSpriteNode = self.childNode(withName: "hourHand") as? SKSpriteNode{
            hourHand = hrHand
        }
        
        if let watchFace:SKSpriteNode = self.childNode(withName: "faceBackground") as? SKSpriteNode{
            faceBackground = watchFace
        }
    }
        
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    
        let date = Date()
        let calendar = Calendar.current
        let hour = CGFloat(calendar.component(.hour, from: date))
//        print(formatTime(hour))
        let minutes = CGFloat(calendar.component(.minute, from: date))
        //secondHand.zRotation = -1 * deg2rad(seconds * 6)
        minuteHand.zRotation = -1 * deg2rad(minutes * 6)
        hourHand.zRotation = -1 * deg2rad(hour * 30 + minutes/2)
        
        let currentFace = formatTime(hour)
        faceBackground.texture = currentFace
    }
    func deg2rad(_ number: CGFloat) -> CGFloat {
        return number * .pi / 180
    }
    
    func formatTime(_ floatHour: CGFloat) -> SKTexture {
        //takes in hour and returns string of hour in 12 hour format rather than 24
        let times = [
            1: SKTexture(image: #imageLiteral(resourceName: "1.png")),
            2: SKTexture(image: #imageLiteral(resourceName: "2.png")),
            3: SKTexture(image: #imageLiteral(resourceName: "3.png")),
            4: SKTexture(image: #imageLiteral(resourceName: "4.png")),
            5: SKTexture(image: #imageLiteral(resourceName: "5.png")),
            6: SKTexture(image: #imageLiteral(resourceName: "6.png")),
            7: SKTexture(image: #imageLiteral(resourceName: "7.png")),
            8: SKTexture(image: #imageLiteral(resourceName: "8.png")),
            9: SKTexture(image: #imageLiteral(resourceName: "9.png")),
            10: SKTexture(image: #imageLiteral(resourceName: "10.png")),
            11: SKTexture(image: #imageLiteral(resourceName: "12.png")),
            12: SKTexture(image: #imageLiteral(resourceName: "12.png"))
        ]
        
        var hour = Int(floatHour)
        if hour > 12 {
            hour = hour - 12
        }
        
        return times[hour]!
    }

}
