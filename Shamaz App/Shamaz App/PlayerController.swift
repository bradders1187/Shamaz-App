//
//  SecondViewController.swift
//  Shamaz App
//
//  Created by Peter Bradtke on 07/05/2019.
//  Copyright © 2019 Peter Bradtke. All rights reserved.
//

import UIKit

class PlayerController: UIViewController {

    @IBOutlet weak var playerButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var tableView: CustomTableView!
    
    var startNewGame = false
  
    
    override func viewDidLoad() {
    super.viewDidLoad()
        playerButton.isEnabled = false
        nameTextField.placeholder = "Please enter the player name"
        tableView.separatorStyle = .none
        saveButton.isEnabled = false
        nameTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if startNewGame {
            tableView.inputDatasource = []
            tableView.reloadData()
            playerButton.isEnabled = false
     }
    }
  
        @objc func textFieldDidChange() {
        saveButton.isEnabled = nameTextField.text?.count ?? 0 > 2 ? true : false
    }

    
    @IBAction func saveButton(_ sender: Any) {
    if let name = nameTextField.text {
        if !name.isEmpty {
        tableView.inputDatasource.append(name)
        tableView.reloadData()
        nameTextField.text = nil
        saveButton.isEnabled = false
     }
    }
        if tableView.inputDatasource.count >= 2 {
        playerButton.isEnabled = true
     }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        (segue.destination as! GameController).names = tableView.inputDatasource
    }
}
