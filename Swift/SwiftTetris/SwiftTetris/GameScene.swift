//
//  GameScene.swift
//  SwiftTetris
//
//  Created by Rive Vermeulen on 29/09/14.
//  Copyright (c) 2014 kdg. All rights reserved.
//  
/* 
    VIEW
    will be responsible for displaying everything for Swiftris - it will render the tetrominos on screen, the background, and the game board. Furthermore, GameScene will be responsible for playing the sounds and keeping track of the time.
*/

import SpriteKit

/*  #1
    First, we define a new constant at #1, TickLengthLevelOne. This variable will represent the slowest speed at which our
    shapes will travel. We've set it to 600 milliseconds, which means that every 6/10ths of a second, our shape should descend  
    by one row.
*/

let TickLenghtLevelOne = NSTimeInterval(600);

class GameScene: SKScene {
    
    
    /*  #2
        At #2 you can see we've defined a few variables. tickLengthMillis and lastTick look similar to declarations we've seen 
        before: one being the GameScene's current tick length – set to TickLengthLevelOne by default – and the other will 
        track the last time we experienced a tick, an NSDate object.
    */
    
    //However, tick:(() -> ())? looks horrifying… tick is what's known as a closure in Swift. A closure is essentially a block of code that performs a function, and Swift refers to functions as closures. In defining tick, its type is (() -> ())? which means that it's a closure which takes no parameters and returns nothing. Its question mark indicates that it is optional and therefore may be nil.
    
    var tick:(() -> ())?
    var tickLenghtMillies = TickLenghtLevelOne
    var lastTick:NSDate?
    
    
    required init(coder aDecoder: NSCoder){
        fatalError("NSCoder not supported")
        
    }


    init(size: CGSize) {
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0, y: 1.0)
        
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: 0, y: 0)
        background.anchorPoint = CGPoint(x: 0, y: 1.0)
        addChild(background)
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
        if(lastTick == nil){
            return
        }
        
        
        var timePassed = lastTick!.timeIntervalSinceNow * -1000.0

        if timePassed > tickLenghtMillies {
            lastTick = NSDate.date()
            
            // It is shorthand for the following statement:
            //if tick {
            //tick!()
            //}
            tick?()
        }
        
    }
    
    /*#4
        Lastly, at #4 we provide accessor methods to let external classes stop and start the ticking process, something we'll 
        make use of later in order to keep pieces from falling at key moments.*/
    
    func startTicking(){
        lastTick = NSDate.date()
    }
    func stopTicking(){
        lastTick = nil
    }
}
