//
//  ViewController.swift
//  IntegrateSpriteKit
//
//  Created by Dang Duy Cuong on 2/18/21.
//  Copyright © 2021 Dang Duy Cuong. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class ViewController: UIViewController {
    @IBOutlet weak var particleView: SKView!
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setShadowView(view: loginView, cornerRadius: 16)
        setShadowButton(button: loginButton, cornerRadius: 8)
        
        // Load the SKScene from 'ParticleScene.sks'
        //        if let scene = SKScene(fileNamed: "ParticleScene") {
        //            // Set the scale mode to scale to fit the window
        //            scene.scaleMode = .aspectFill
        //
        //            // Present the scene
        //            particleView.presentScene(scene)
        //        }
        //
        //        particleView.ignoresSiblingOrder = true
        //
        //        particleView.showsFPS = false
        //        particleView.showsNodeCount = false
    }
    
    //    override var shouldAutorotate: Bool {
    //        return true
    //    }
    //
    //    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
    //        if UIDevice.current.userInterfaceIdiom == .phone {
    //            return .allButUpsideDown
    //        } else {
    //            return .all
    //        }
    //    }
    //
    //    override var prefersStatusBarHidden: Bool {
    //        return true
    //    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let particleScene = SKScene(fileNamed: "ParticleScene") {
            particleView.presentScene(particleScene)
        }
    }
    
    func setShadowView(view: UIView, cornerRadius: CGFloat) {
        view.layer.cornerRadius = cornerRadius
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 10
    }
    
    func setShadowButton(button: UIButton, cornerRadius: CGFloat) {
        button.layer.cornerRadius = cornerRadius
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.5
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
    }
    
}
