//
//  FinalViewController.swift
//  iQuiz
//
//  Created by studentuser on 11/11/15.
//  Copyright © 2015 iSchool. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var finalText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        finalText.text = "Great! You have finished the \(currentQuiz) Quiz! You\'re score is \(totalScore)/4"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
