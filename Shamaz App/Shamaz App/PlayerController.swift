//
//  SecondViewController.swift
//  Shamaz App
//
//  Created by Peter Bradtke on 07/05/2019.
//  Copyright © 2019 Peter Bradtke. All rights reserved.
//

import UIKit

class PlayerController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var playerButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var tableView: CustomTableView!
  
    
    override func viewDidLoad() {
    super.viewDidLoad()
        playerButton.isEnabled = false
        nameTextField.delegate = self
        nameTextField.placeholder = "Please enter the player name"
        tableView.separatorStyle = .none
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    
    @IBAction func saveButton(_ sender: Any) {
    if let name = nameTextField.text {
        tableView.inputDatasource.append(name)
        tableView.reloadData()
        nameTextField.text = nil
    }
    if tableView.inputDatasource.count >= 2 {
        playerButton.isEnabled = true
    }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        (segue.destination as! GameController).names = tableView.inputDatasource
    }
    
}
