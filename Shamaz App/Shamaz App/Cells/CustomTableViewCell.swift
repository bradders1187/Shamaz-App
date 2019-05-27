//
//  CustomTableViewCell.swift
//  Shamaz App
//
//  Created by Peter on 20/05/2019.
//  Copyright © 2019 Peter Bradtke. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    func config(text: String) {
        
        nameLabel.text = text
    }
    
}
