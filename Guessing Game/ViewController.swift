//
//  ViewController.swift
//  Guessing Game
//
//  Created by Chris Archibald on 9/21/15.
//  Copyright (c) 2015 Chris Archibald. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessTextField: UITextField!
    @IBOutlet weak var resultsLabel: UILabel!
    
    var number: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createRandomNumber()
        resultsLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func GuessPressedButton(sender: AnyObject) {
        if let theirGuess = guessTextField.text.toInt()
        {
            var diff = theirGuess - number
            if diff < -50 {
                resultsLabel.text = "Your very very far away try a higher number"
            } else if diff >= -50 && diff < -30 {
                resultsLabel.text = "Your very far away try a higher number"
            } else if diff >= -30 && diff < -10 {
                resultsLabel.text = "Your getting closer try a higher number"
            } else if diff >= -10 && diff < -5 {
                resultsLabel.text = "Your so close now, try a higher number"
            } else if diff >= -5 && diff < -1 {
                resultsLabel.text = "You almost got it, just a tiny bit higher"
            } else if diff == 0 {
                resultsLabel.text = "W00t your a winner!!!!!"
            } else if diff >= -5 && diff < -1 {
                resultsLabel.text = "You almost got it, just a tiny bit lower"
            } else if diff >= -10 && diff < -5 {
                resultsLabel.text = "Your so close now, try a lower number"
            } else if diff >= -30 && diff < -10 {
                resultsLabel.text = "Your getting closer try a lower number"
            } else if diff >= -50 && diff < -30 {
                resultsLabel.text = "Your very far away try a lower number"
            } else {
                resultsLabel.text = "Your very very far away try a lower number"
            }
        }
    }
    
    
    @IBAction func resetPressedButton(sender: AnyObject) {
        createRandomNumber()
    }
    
    func createRandomNumber() {
        number = Int(arc4random_uniform(100)) + 1
        println(number)
    }
}

