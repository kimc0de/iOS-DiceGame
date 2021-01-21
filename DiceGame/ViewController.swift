//
//  ViewController.swift
//  DiceGame
//
//  Created by Kim on 21.01.21.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlet reference to a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    var leftDiceNumber = 0
    var rightDiceNumber = 5
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //change image on first view
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix") // image literal
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo") // image literal
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image =  [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")  ] [leftDiceNumber]
        diceImageView2.image =  [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")  ] [rightDiceNumber]
        leftDiceNumber = leftDiceNumber + 1
        rightDiceNumber = rightDiceNumber - 1
    } 
}

