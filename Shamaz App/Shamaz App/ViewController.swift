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
    @IBOutlet weak var nextPlayerButton: UIButton!
    @IBOutlet weak var playerListButton: UIButton!
    
    
    var names = ["Pete", "Sarah B", "Luke", "Sarah C", "Louis", "Emma", "Jay", "Jen", "Chris", "Greg"]
    let pastQuestions = ["Describe what you did this time", "Tell a funny story from", "Tell an embarrassing story from", "Tell us your favourite song from"]
    let futureQuestions = ["What can you see yourself doing in", "What would you love to be doing"]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            futureButton.isEnabled = false
            pastButton.isEnabled = false
            nextPlayerButton.isEnabled = true
        }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        nextPlayerButton.layer.cornerRadius = nextPlayerButton.bounds.height/2
        playerListButton.layer.cornerRadius = playerListButton.bounds.height/2
        
    }
    
        
        @IBAction func pastButton(_ sender: Any, forEvent event: UIEvent) {
            let past = ["1 Year ago?", "1 Week ago?", "2 Weeks ago?", "5 Years ago?", "2 days ago?"]
            let alert = (UIAlertController (title: pastQuestions.randomElement(), message: past.randomElement(), preferredStyle: .alert))
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
            
            pastFutureDidClick()
            
        }
        
        @IBAction func futureButton(_ sender: Any, forEvent event: UIEvent) {
            let future = ["1 Year from now?", " 1 Week from now?", "2 Weeks from now?", "5 Years from now?", "2 Days from now?"]
            let alert = (UIAlertController (title: futureQuestions.randomElement(), message: future.randomElement(), preferredStyle: .alert))
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
            
            pastFutureDidClick()
            
            
        }
        
    
        
        @IBAction func nextPlayer (_ sender: Any) {
            let randomName = names.randomElement()
            nextPlayer.text = randomName
            
            if let _name = randomName, let index = names.firstIndex(of: _name){
                names.remove(at: index)
                
        pastButton.isEnabled = true
        futureButton.isEnabled = true
        nextPlayerButton.isEnabled = false
        }
            
            
            
            }
            
        private func pastFutureDidClick() {
            pastButton.isEnabled = false
            futureButton.isEnabled = false
            nextPlayerButton.isEnabled = true
                
        if names.isEmpty {
            nextPlayerButton.setTitle("PLAY AGAIN", for: .normal)
    }
            
    
                    
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let _ : SecondViewController = segue.destination as! SecondViewController
    }
    
    @IBAction func playerListButton(_ sender: UIStoryboardSegue){
    }
    
    


}
