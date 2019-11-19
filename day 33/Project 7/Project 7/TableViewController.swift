//
//  TableViewController.swift
//  Project 7
//
//  Created by Moazzam Tahir on 20/11/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    var petitions = [Petition]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://www.hackingwithswift.com/samples/petitions-2.json"
        
        guard let url = URL(string: urlString) else {return}
        if let data = try? Data(contentsOf: url) {
            print("DATA: \(data)")
            parseData(json: data)
        }
    }
    
    func parseData(json: Data) {
        let decoder = JSONDecoder()
        
        if let jsonDecoder = try? decoder.decode(Result.self, from: json) {
            petitions = jsonDecoder.results
            tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petitions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let petition = petitions[indexPath.row]
        cell.textLabel?.text = petition.title
        cell.detailTextLabel?.text = petition.body
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailedViewController()
        vc.detailedItem = petitions[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
