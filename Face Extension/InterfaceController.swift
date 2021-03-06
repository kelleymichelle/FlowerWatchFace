//
//  InterfaceController.swift
//  Face Extension
//
//  Created by Kelley Chaplain on 5/21/20.
//  Copyright © 2020 Kelley Chaplain. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var skInterface: WKInterfaceSKScene!
    @IBOutlet weak var dateLabel: WKInterfaceLabel!
    
    let today = Date()
    let dateFormatter = DateFormatter()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        // Load the SKScene from 'GameScene.sks'
        if let scene = GameScene(fileNamed: "GameScene") {
            
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
            
            // Present the scene
            self.skInterface.presentScene(scene)
            
            // Use a value that will maintain a consistent frame rate
            self.skInterface.preferredFramesPerSecond = 30
        }
        updateDate()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        skInterface.isPaused = false
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func updateDate() {
        dateFormatter.dateFormat = "E d MMM"
        let todaysDate = dateFormatter.string(from: today)
        dateLabel.setText(todaysDate)
    }


}
