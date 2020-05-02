//
//  ViewController.swift
//  Project2
//
//  Created by Shreyas on 30/04/20.
//  Copyright © 2020 Shreyas. All rights reserved.
//

// Challenge 1 - Try showing the player’s score in the navigation bar, alongside the flag to guess.
// Challenge 2 - Keep track of how many questions have been asked, and show one final alert controller after they have answered 10. This should show their final score.
// Challenge 3 - When someone chooses the wrong flag, tell them their mistake in your alert message – something like “Wrong! That’s the flag of France,” for example.

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    var questionsAsked = 0
    
    var correctAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        askQuestion(action: nil)
    }
    
    func askQuestion(action: UIAlertAction!) -> Void {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = "\(countries[correctAnswer].uppercased()) | Your Score: \(score)"
        questionsAsked += 1
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
        } else {
            title = "Incorrect"
            score -= 1
            let ac = UIAlertController(title: title, message: "Sorry, the correct answer was \(correctAnswer)", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
            present(ac, animated: true)
        }
        
        if questionsAsked < 10 {
            let ac = UIAlertController(title: title, message: "Your score is \(score)", preferredStyle: .alert)
                   
           ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
           
           present(ac, animated: true)
        } else {
            let ac = UIAlertController(title: "Game Over", message: "You answered 10 questions, Final score is \(score)", preferredStyle: .alert)
                   
           ac.addAction(UIAlertAction(title: "Play again", style: .default, handler: askQuestion))
           
           present(ac, animated: true)
           score = 0
           questionsAsked = 0
           correctAnswer = 0
        }
        
       
    }
    
}

