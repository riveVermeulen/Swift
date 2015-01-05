//
//  ViewController.swift
//  KdgFunFacts
//
//  Created by Rive Vermeulen on 10/10/14.
//  Copyright (c) 2014 kdg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    //@IBOutlet weak var funFactButton: UIButton!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factBook = FactBookModel();
    let colorWheel = ColorWheel();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func showFunFact(sender: AnyObject) {
        var randomColor = colorWheel.randomColor();
        view.backgroundColor = randomColor;
        funFactButton.setTitleColor(randomColor, forState:UIControlState.Normal);
        funFactLabel.text = factBook.randomFact();
        
        

    }

   

}

