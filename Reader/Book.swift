//
//  Book.swift
//  Reader
//
//  Created by user209963 on 2022/1/1.
//

import Foundation
import SwiftUI

struct Book: Identifiable, Equatable {
    let id = UUID()
    var title: String = ""
    var image: Image
    
    init(title: String, path: String) {
        self.title = title
        let image = drawPDFfromURL(url: URL(fileURLWithPath: path))
        
        if image != nil {
            self.image = Image(uiImage: image!)
        } else {
            self.image = Image(systemName: "doc.plaintext") //預設圖片
        }
    }
    
    static func == (lhs: Book, rhs: Book) -> Bool {
        return lhs.id == rhs.id && lhs.title == rhs.title && lhs.image == rhs.image
    }
}
