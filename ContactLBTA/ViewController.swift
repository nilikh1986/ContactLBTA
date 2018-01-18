//
//  ViewController.swift
//  ContactLBTA
//
//  Created by Patnayak, Nilikh on 11/15/17.
//  Copyright © 2017 Patnayak, Nilikh. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let cellId = "cellId"
    
    let names = [
        "Amy", "Steve", "Jack", "Bill", "Mark"
    ]
    
    let twoDimensionalArray = [
        ["Amy", "Steve", "Jack", "Bill", "Mark"],
        ["qw", "qwr"],
        ["sfs", "sdff", "erer", "tertr"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Contacts"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "Header"
        label.backgroundColor = UIColor.lightGray
        return label
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return twoDimensionalArray.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return twoDimensionalArray[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let name = twoDimensionalArray[indexPath.section][indexPath.row]
        cell.textLabel?.text = "\(name) section: \(indexPath.section) row: \(indexPath.row)"
        
        return cell
    }

}

