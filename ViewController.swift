//
//  ViewController.swift
//  Shamaz App
//
//  Created by Peter Bradtke on 06/05/2019.
//  Copyright © 2019 Peter Bradtke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        
        @IBOutlet weak var nextPlayer: UILabel!
        @IBOutlet weak var pastButton: UIButton!
        @IBOutlet weak var futureButton: UIButton!
        
        override func viewDidLoad() {
            super.viewDidLoad()
        }
        
        @IBAction func pastButton(_ sender: Any, forEvent event: UIEvent) {
            let past = ["1 Year ago?", "1 Week ago?", "2 Weeks ago?", "5 Years ago?", "2 days ago?"]
            let alert = (UIAlertController (title: pastQuestions.randomElement(), message: past.randomElement(), preferredStyle: .alert))
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
            
        }
        
        @IBAction func futureButton(_ sender: Any, forEvent event: UIEvent) {
            let future = ["1 Year from now?", " 1 Week from now?", "2 Weeks from now?", "5 Years from now?", "2 Days from now?"]
            let alert = (UIAlertController (title: futureQuestions.randomElement(), message: future.randomElement(), preferredStyle: .alert))
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
        
        let pastQuestions = ["Describe what you did this time", "Tell a funny story from", "Tell an embarrassing story from", "Tell us your favourite song from"]
        let futureQuestions = ["What can you see yourself doing in", "What would you love to be doing"]
        
        @IBAction func nextPlayer(_ sender: Any) {
            var names = ["Pete", "Sarah B", "Luke", "Sarah C", "Louis", "Emma", "Jay", "Jen", "Chris", "Greg"]
            nextPlayer.text = names.randomElement()
            let randomidx = 1
            if names.count > randomidx {
                names.remove(at: randomidx)
            
                
                if nextPlayer.text?.isEmpty == true {
                    futureButton.isHidden = true
                    
                    if nextPlayer.text?.isEmpty == true{
                        pastButton.isHidden = true
                    }
                    
                }
                
            }
        }
    }
    



