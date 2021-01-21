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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let dices = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")] //constant value now
        diceImageView1.image =  dices[Int.random(in: 0...5)]
        diceImageView2.image =  dices[Int.random(in: 0...5)]
    }
}

