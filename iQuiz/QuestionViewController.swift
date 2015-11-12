//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by studentuser on 11/11/15.
//  Copyright © 2015 iSchool. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    
    
    @IBOutlet weak var questionText: UILabel!
    
    @IBOutlet weak var answer1: UIButton!
    
    @IBOutlet weak var answer2: UIButton!
    
    @IBOutlet weak var answer3: UIButton!
    
    @IBOutlet weak var answer4: UIButton!
    
   

    override func viewDidLoad() {
        super.viewDidLoad()

        
        selectedAnswer = ""
        
        switch currentQuiz {
        case "Math":
            questionText!.text = mathQuiz[currentQuestion].quest
            answer1.setTitle(mathQuiz[currentQuestion].answers[0], forState: .Normal)
            answer2.setTitle(mathQuiz[currentQuestion].answers[1], forState: .Normal)
            answer3.setTitle(mathQuiz[currentQuestion].answers[2], forState: .Normal)
            answer4.setTitle(mathQuiz[currentQuestion].answers[3], forState: .Normal)
            currentCorrectAnswer = mathQuiz[currentQuestion].correctAnswer
        case "Geography":
            questionText!.text = geographyQuiz[currentQuestion].quest
            answer1.setTitle(geographyQuiz[currentQuestion].answers[0], forState: .Normal)
            answer2.setTitle(geographyQuiz[currentQuestion].answers[1], forState: .Normal)
            answer3.setTitle(geographyQuiz[currentQuestion].answers[2], forState: .Normal)
            answer4.setTitle(geographyQuiz[currentQuestion].answers[3], forState: .Normal)
            currentCorrectAnswer = geographyQuiz[currentQuestion].correctAnswer

        case "Science":
            questionText!.text = scienceQuiz[currentQuestion].quest
            answer1.setTitle(scienceQuiz[currentQuestion].answers[0], forState: .Normal)
            answer2.setTitle(scienceQuiz[currentQuestion].answers[1], forState: .Normal)
            answer3.setTitle(scienceQuiz[currentQuestion].answers[2], forState: .Normal)
            answer4.setTitle(scienceQuiz[currentQuestion].answers[3], forState: .Normal)
            currentCorrectAnswer = scienceQuiz[currentQuestion].correctAnswer

        default: break
        }
        
        currentQuestion++

    }
    
        
    @IBAction func answer1tap(sender: UIButton) {
        selectedAnswer = sender.currentTitle!
        
    }
    @IBAction func answer2tap(sender: UIButton) {
        selectedAnswer = sender.currentTitle!
    }
    @IBAction func answer3tap(sender: UIButton) {
        selectedAnswer = sender.currentTitle!
    }
    @IBAction func answer4tap(sender: UIButton) {
        selectedAnswer = sender.currentTitle!
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print(selectedAnswer)
    }
    
    

}
