//
//  SecondViewController.swift
//  Shamaz App
//
//  Created by Peter Bradtke on 07/05/2019.
//  Copyright © 2019 Peter Bradtke. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var playerButton: UIButton!
    @IBOutlet var playerTableView: [UITableView]!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    
    var names: [String] = []
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        playerButton.isEnabled = true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
    }
    
    @IBAction func saveButton(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let _ : ViewController = segue.destination as! ViewController
    }
    
}
