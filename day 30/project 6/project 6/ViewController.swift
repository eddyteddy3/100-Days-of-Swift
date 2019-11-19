//
//  ViewController.swift
//  project 6
//
//  Created by Moazzam Tahir on 19/11/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let label4 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UILabelViews()
        
        let viewsDictionary = ["label1": self.label1, "label2": self.label2, "label3": self.label3, "label4": self.label4]
        //addVCLConstraints(viewsDictionary: viewsDictionary)
        addAnchorConstraints()
    }
    
    func UILabelViews() {
        label1.text = "This"
        label1.backgroundColor = .cyan
        label1.textAlignment = .center
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.sizeToFit()
        
        label2.text = "is"
        label2.backgroundColor = .red
        label2.textAlignment = .center
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.sizeToFit()
        
        label3.text = "Hello"
        label3.backgroundColor = .blue
        label3.textAlignment = .center
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.sizeToFit()
        
        label4.text = "World!"
        label4.backgroundColor = .green
        label4.textAlignment = .center
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.sizeToFit()
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
    }
    
    func addAnchorConstraints() {
        var previousView: UILabel?
        
        for label in [label1, label2, label3, label4] {
            label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            label.heightAnchor.constraint(equalToConstant: 88).isActive = true
            
            if let previous = previousView {
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            } else {
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
            }
            previousView = label
        }
    }
    
    func addVCLConstraints(viewsDictionary: [String: UILabel]) {
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label1]|", options: [], metrics: nil, views: viewsDictionary))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label2]|", options: [], metrics: nil, views: viewsDictionary))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label3]|", options: [], metrics: nil, views: viewsDictionary))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label4]|", options: [], metrics: nil, views: viewsDictionary))
        
        let metrics = ["labelHeight": 80]
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-(labelHeight)-[label1]-[label2]-[label3]-[label4]->=50-|", options: [], metrics: metrics, views: viewsDictionary))
    }


}

