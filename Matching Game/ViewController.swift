//
//  ViewController.swift
//  Matching Game
//
//  Created by Sara on 15/12/2022.
//

import UIKit

class ViewController: UIViewController {
    
    // Enum to represent the list of words
    enum ListOfWords: String {
        case Banana
        case Watermelon
        case Kiwi
        case Apple
        case Lemon
        case Cherries
        case Orange
        case Strawberry
        case Blueberries
    }
    
    // Array to store shuffled words
    var wordArray: [ListOfWords] = [.Banana, .Watermelon, .Kiwi, .Apple, .Lemon, .Cherries, .Orange, .Strawberry, .Blueberries].shuffled()
    
    // UI elements
    @IBOutlet var scoreLabel: UILabel!
    var score: Int = 0
    @IBOutlet var feedbackLabel: UILabel!
    @IBOutlet var wordLabel: UILabel!
    @IBOutlet var pictureButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set initial word, score, and feedback labels
        wordLabel.text = wordArray.removeLast().rawValue
        scoreLabel.text = "Score: \(score)"
        feedbackLabel.text = ""
    }
    
    // Update the feedback label with animation
    func updateFeedbackLabel(_ animated: Bool) {
        super.viewDidAppear(animated)
            let duration = TimeInterval(1)
            self.feedbackLabel.alpha = 1.0
            
            UIView.animate(withDuration: duration, delay: 0.0, animations: {
                self.feedbackLabel.alpha = 0.0
            })

    }
    
    // Action when picture button is pressed
    @IBAction func pictureButtonPressed(_ sender: UIButton) {
        // Check if the selected image matches the current word
        if sender.tag == 0 && wordLabel.text == ListOfWords.Banana.rawValue {
            // Increase score and update labels
            score += 1
            scoreLabel.text = "Score: \(score)"
            feedbackLabel.text = "Correct"
            // Animate feedback label
            updateFeedbackLabel(true)
        }
        else if sender.tag == 1 && wordLabel.text == ListOfWords.Watermelon.rawValue {
            score += 1
            scoreLabel.text = "Score: \(score)"
            feedbackLabel.text = "Correct"
            updateFeedbackLabel(true)
        }
        else if sender.tag == 2 && wordLabel.text == ListOfWords.Kiwi.rawValue {
            score += 1
            scoreLabel.text = "Score: \(score)"
            feedbackLabel.text = "Correct"
            updateFeedbackLabel(true)
        }
        else if sender.tag == 3 && wordLabel.text == ListOfWords.Apple.rawValue {
            score += 1
            scoreLabel.text = "Score: \(score)"
            feedbackLabel.text = "Correct"
            updateFeedbackLabel(true)
        }
        else if sender.tag == 4 && wordLabel.text == ListOfWords.Lemon.rawValue {
            score += 1
            scoreLabel.text = "Score: \(score)"
            feedbackLabel.text = "Correct"
            updateFeedbackLabel(true)
        }
        else if sender.tag == 5 && wordLabel.text == ListOfWords.Cherries.rawValue {
            score += 1
            scoreLabel.text = "Score: \(score)"
            feedbackLabel.text = "Correct"
            updateFeedbackLabel(true)
        }
        else if sender.tag == 6 && wordLabel.text == ListOfWords.Orange.rawValue {
            score += 1
            scoreLabel.text = "Score: \(score)"
            feedbackLabel.text = "Correct"
            updateFeedbackLabel(true)
        }
        else if sender.tag == 7 && wordLabel.text == ListOfWords.Strawberry.rawValue {
            score += 1
            scoreLabel.text = "Score: \(score)"
            feedbackLabel.text = "Correct"
            updateFeedbackLabel(true)
        }
        else if sender.tag == 8 && wordLabel.text == ListOfWords.Blueberries.rawValue {
            score += 1
            scoreLabel.text = "Score: \(score)"
            feedbackLabel.text = "Correct"
            updateFeedbackLabel(true)
        }
        
        // Show next word or finish the game
        if wordArray.count > 0 {
            wordLabel.text = wordArray.removeLast().rawValue
        } else {
            wordLabel.text = "You got \(score) out of 9 correct"
            feedbackLabel.text = "Game Over"
            // Animate feedback label for game over
            updateFeedbackLabel(false)
            
        }
    }
}



    




    

    


