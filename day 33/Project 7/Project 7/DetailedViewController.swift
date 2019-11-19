//
//  DetailedViewController.swift
//  Project 7
//
//  Created by Moazzam Tahir on 20/11/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
    
    var detailedItem: Petition?

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let petition = detailedItem else {return}
        
        let title: UILabel = {
           let label = UILabel()
            label.text = petition.title
            label.font = UIFont.boldSystemFont(ofSize: 20)
            label.textAlignment = .center
            label.translatesAutoresizingMaskIntoConstraints = false
            label.backgroundColor = .red
            return label
        }()
        
        let body: UILabel = {
            let label = UILabel()
            label.text = petition.body
            //label.font = UIFont.boldSystemFont(ofSize: 5)
            label.translatesAutoresizingMaskIntoConstraints = false
            label.backgroundColor = .green
            return label
        }()
        
        view.addSubview(title)
        view.addSubview(body)
        view.backgroundColor = .white
        title.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        //view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v1]|", options: [], metrics: nil, views: ["v1": title]))
        title.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
