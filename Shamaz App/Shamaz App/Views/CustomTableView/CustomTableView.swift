//
//  CustomTableView.swift
//  Shamaz App
//
//  Created by Peter on 20/05/2019.
//  Copyright © 2019 Peter Bradtke. All rights reserved.
//

import UIKit

class CustomTableView: UITableView, UITableViewDelegate, UITableViewDataSource {

    var inputDatasource: [String] = []

    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
        registerCells()
    }
    private func registerCells() {
        self.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "PlayerCell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inputDatasource.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell") as! CustomTableViewCell
        cell.config(text: inputDatasource[indexPath.row])
        return cell
    }
}
