//
//  Petitions.swift
//  Project 7
//
//  Created by Moazzam Tahir on 19/11/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}
