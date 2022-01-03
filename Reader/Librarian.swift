//
//  Librarian.swift
//  Reader
//
//  Created by user209963 on 2022/1/2.
//

import Foundation
import SwiftUI

class BooksViewModel: ObservableObject {
    @Published var books: [Book] = [
        Book(title: "怪盜亞森羅蘋", path: ""),
        Book(title: "虎牙", path: ""),
        Book(title: "魔女與羅蘋", path: ""),
        Book(title: "怪盜與名偵探", path: ""),
        Book(title: "惡魔詛咒的紅圈", path: ""),
        Book(title: "八大奇案", path: ""),
        Book(title: "奇巖城", path: ""),
        Book(title: "玻璃瓶塞的祕密", path: "")
    ]
    
    @Published var deleteBooks = [Book]()
    
    @Published var newBooks: [Book] = [
        Book(title: "原子習慣", path: ""),
        Book(title: "雜訊", path: ""),
        Book(title: "人機對決", path: ""),
        Book(title: "高品質軟體文件", path: "")
    ]
    
    func addBook(book: Book) {
        books.append(book)
    }
    
    func removeBook(book: Book) {
        deleteBooks.append(book)
    }

    func removeBook(bookTitle: String) {
        for book in books {
            print(book)
        }
    }
    
    func getDeleteBooksCount() -> Int {
        return deleteBooks.count
    }
    
    func removeBooks() {
        for deleteBook in deleteBooks {
            let index = books.firstIndex(of: deleteBook)
            books.remove(at: index!)
        }
        deleteBooks.removeAll()
    }
    
    func reAddBook(book: Book) {
        let index = deleteBooks.firstIndex(of: book)
        deleteBooks.remove(at: index!)
    }
    
    func isBookExist(book: Book) -> Bool {
        for item in books {
            if item.title == book.title {
                return true
            }
        }
        return false
    }
}
