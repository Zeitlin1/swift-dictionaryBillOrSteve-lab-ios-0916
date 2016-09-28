//
//  ViewController.swift
//  BillOrSteve
//
//  Created by James Campagno on 6/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Create your stored properties here
    
    @IBOutlet weak var correctAnswerCounter: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    var correctAnswerCounterCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    questionLabel.text = randomPerson()[randomIndex(fromArray: randomPerson())]
        
    }
    
    // my bill & steve arrays
    var billArray: [String] = ["He aimed to become a millionaire by the age of 30. However, he became a billionaire at 31.", "He scored 1590 (out of 1600) on his SATs.", "His foundation spends more on global health each year than the United Nation's World Health Organization.", "The private school he attended as a child was one of the only schools in the US with a computer. The first program he ever used was a tic-tac-toe game.", "In 1994, he was asked by a TV interviewer if he could jump over a chair from a standing position. He promptly took the challenge and leapt over the chair like a boss."]
    var steveArray: [String] = ["He took a calligraphy course, which he says was instrumental in the future company products' attention to typography and font.", "Shortly after being shooed out of his company, he applied to fly on the Space Shuttle as a civilian astronaut (he was rejected) and even considered starting a computer company in the Soviet Union.", "He actually served as a mentor for Google founders Sergey Brin and Larry Page, even sharing some of his advisers with the Google duo.", "He was a pescetarian, meaning he ate no meat except for fish."]
    
    
    
    // these are used by the user to make choice
    @IBAction func steveButton(_ sender: AnyObject) {
        for (index, _) in steveArray.enumerated() {
            if questionLabel.text == steveArray[index] {
                correctAnswerCounterCounter += 1
                correctAnswerCounter.text = String(correctAnswerCounterCounter)
                print("Correct!")
            }
        }
        questionLabel.text = randomPerson()[randomIndex(fromArray: randomPerson())]
        print("next question")
    }
        
    @IBAction func billButton(_ sender: AnyObject) {
        for (index, _) in billArray.enumerated() {
            if questionLabel.text == billArray[index] {
                correctAnswerCounterCounter += 1
                correctAnswerCounter.text = String(correctAnswerCounterCounter)
                print("Correct!")
            }
        }
        questionLabel.text = randomPerson()[randomIndex(fromArray: randomPerson())]
        print("next question")
        
    }
    
    
    // Helper Functions
    

    func randomIndex(fromArray array: [String]) -> Int {
        
        return Int(arc4random_uniform(UInt32(array.count)))
    }
    
    
    
    func randomPerson() -> Array<String> {
        let randomNumber = arc4random_uniform(2)
        
        if randomNumber == 0 {
            return steveArray
        } else {
            return billArray
        }
    }
    
}
