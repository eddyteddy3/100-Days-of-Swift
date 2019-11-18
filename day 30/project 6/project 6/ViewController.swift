//
//  ViewController.swift
//  project 6
//
//  Created by Moazzam Tahir on 19/11/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel()
        label1.text = "This"
        label1.backgroundColor = .cyan
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.text = "is"
        label2.backgroundColor = .red
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.text = "Hello"
        label3.backgroundColor = .blue
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.sizeToFit()
        
        let label4 = UILabel()
        label4.text = "World!"
        label4.backgroundColor = .green
        label4.textAlignment = .center
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.sizeToFit()
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        
        
        //dictionary for the views
        let viewsDictionary = ["label1": label1,
                               "label2": label2,
                               "label3": label3,
                               "label4": label4]
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[label1(50)]-|", options: [], metrics: nil, views: viewsDictionary))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label2]|", options: [], metrics: nil, views: viewsDictionary))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label3]|", options: [], metrics: nil, views: viewsDictionary))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label4]|", options: [], metrics: nil, views: viewsDictionary))
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-50-[label1(50)]-[label2(50)]-[label3(50)]-[label4(50)]", options: [], metrics: nil, views: viewsDictionary))
        
    }


}

