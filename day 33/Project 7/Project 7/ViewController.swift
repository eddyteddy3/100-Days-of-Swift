//
//  ViewController.swift
//  Project 7
//
//  Created by Moazzam Tahir on 19/11/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var petitions = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petitions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "This is title"
        cell.detailTextLabel?.text = "This is detailed text"
        return cell
    }


}

