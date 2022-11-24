//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // These two IBOutlets allows to reference the UI elements of the dice
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Button Pressed
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // create a die
        let diceFaces = [
            UIImage(named: "DiceOne"),
            UIImage(named: "DiceTwo"),
            UIImage(named: "DiceThree"),
            UIImage(named: "DiceFour"),
            UIImage(named: "DiceFive"),
            UIImage(named: "DiceSix")
        ]
        
        // get the random images
        diceImageViewLeft.image = diceFaces.randomElement() as? UIImage
        diceImageViewRight.image = diceFaces.randomElement() as? UIImage
    }
    
}

