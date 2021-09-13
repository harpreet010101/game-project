//
//  StartPage.swift
//  SagarGame
//
//  Created by Damini Verma on 2017-10-10.
//

import Foundation
import SpriteKit

class StartPageScene: SKScene {
    
    var play : SKSpriteNode?
    
    override init(size: CGSize) {
        
        super.init(size: size)
        play = SKSpriteNode(imageNamed: "play")
        
        play?.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(play!)
        
        play?.name = "playBtn"
        play?.isUserInteractionEnabled = false
        
    }
    
   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //        let touch:UITouch = as! UITouch
        for touch in touches
        {
            let positionInScene = touch.location(in: self)
            let touchedNode = self.atPoint(positionInScene)
            
            if let name = touchedNode.name
            {
                if name == "playBtn"
                {
                     self.view?.presentScene(GameScene(size: size))
                }
            }
        }
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
