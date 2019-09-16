//
//  ViewController.swift
//  Word Garden
//
//  Created by Ivelisse Mandato on 9/15/19.
//  Copyright © 2019 Ivelisse Mandato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessedLetterField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guessLetterButton.isEnabled = false
        playAgainButton.isHidden = true
    }

    func updateUIAfterGuess(){
        guessedLetterField.resignFirstResponder()
        guessedLetterField.text = ""
    }
    
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
        if let letterGuessed = guessedLetterField.text?.last {
            guessedLetterField.text = "\(letterGuessed)"
            guessLetterButton.isEnabled = true
        } else {
            //disable the button if I don't have a single character in the guessedLetterField
            guessLetterButton.isEnabled = false
        }
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        print("In doneKeyPressed, is guessedLetterField the first responder before updateUIAfterGuess?", guessedLetterField.isFirstResponder)
        updateUIAfterGuess()
        print("In doneKeyPressed, is guessedLetterField the first responder after updateUIAfterGuess?", guessedLetterField.isFirstResponder)
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        print("In guessLetterButtonPressed, is guessedLetterField the first responder before updateUIAfterGuess?", guessedLetterField.isFirstResponder)
        updateUIAfterGuess()
        print("In guessLetterButtonPressed, is guessedLetterField the first responder after updateUIAfterGuess?", guessedLetterField.isFirstResponder)
    }
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
}

