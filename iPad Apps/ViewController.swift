//
//  ViewController.swift
//  iPad Apps
//
//  Created by user on 12/6/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    var backGroundImage = UIImageView()
    var square = UIView()
    
    var skView = SKView()
    
    //Setting up UI elements 
    override func viewWillAppear(_ animated: Bool) {
        backGroundImage.contentMode = .scaleAspectFill
        backGroundImage.image = UIImage(named: "backgroundImage")
        backGroundImage.frame = self.view.bounds
        backGroundImage.alpha = 0.5

        square.layer.cornerRadius = 100
       
    }
    
    func setupGameScene() {
       
       
        let scene = GameScene(size: CGSize(width: 1080, height: 1920))
            scene.scaleMode = .aspectFill
            skView = self.view as! SKView
        
        skView.presentScene(scene)
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        square.backgroundColor = .blue
//        square.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
//        UIView.animate(withDuration: 300) {
//            self.square.frame = CGRect(x: 300, y: 400, width: 200, height: 200)
//            self.square.backgroundColor = .yellow
//        }
    
        view.addSubview(backGroundImage)
        setupGameScene()
//        view.addSubview(square)
       
        
        
    }
}
