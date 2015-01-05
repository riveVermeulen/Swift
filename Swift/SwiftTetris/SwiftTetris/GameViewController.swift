//
//  GameViewController.swift
//  SwiftTetris
//
//  Created by Rive Vermeulen on 29/09/14.
//  Copyright (c) 2014 kdg. All rights reserved.
//
/*
    Controller
    GameViewController, on the other hand, will be responsible for handling user input and communicating between GameScene and a game logic class you'll write soon.
*/
import UIKit
import SpriteKit


class GameViewController: UIViewController {

    var scene: GameScene!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let skView = view as SKView
        skView.multipleTouchEnabled = false;
        
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        skView.presentScene(scene)
        
    }


    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
