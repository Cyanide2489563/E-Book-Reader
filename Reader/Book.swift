//
//  Book.swift
//  Reader
//
//  Created by user209963 on 2022/1/1.
//

import Foundation

class Book {
    var name: String = ""
    var path: FILE
    
    init(name: String, path: FILE) {
        self.name = name
        self.path = path
    }
}
