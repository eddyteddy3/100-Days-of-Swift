//
//  ViewController.swift
//  Project 5
//
//  Created by Moazzam Tahir on 18/11/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var allWords = [String]()
    var usedWords = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadFiles()
        startGame()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(promptAnswer))
    }
    
    @objc func promptAnswer() {
        let alert = UIAlertController(title: "Enter Answer here.", message: nil, preferredStyle: .alert)
        alert.addTextField()
        
        let submitAction = UIAlertAction(title: "Submit", style: .default) { [weak self, weak alert] action in
            guard let answer = alert?.textFields?[0].text else {return}
            self?.submit(answer: answer)
        }
        
        alert.addAction(submitAction)
        present(alert, animated: true)
    }
    
    func submit(answer: String) {
        print(answer)
    }
    
    func startGame() {
        title = allWords.randomElement()
        usedWords.removeAll(keepingCapacity: true)
        tableView.reloadData()
    }
    
    func loadFiles() {
        let pathUrl = Bundle.main.url(forResource: "start", withExtension: "txt")
        if let textWords = try? String(contentsOf: pathUrl!) {
            allWords = textWords.components(separatedBy: "\n")
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usedWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "word", for: indexPath)
        cell.textLabel?.text = usedWords[indexPath.row]
        return cell
    }

}

