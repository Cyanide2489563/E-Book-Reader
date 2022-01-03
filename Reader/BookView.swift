//
//  BookView.swift
//  Reader
//
//  Created by user209963 on 2022/1/1.
//

import SwiftUI

struct BookView: View {
    let book: Book
    
    var body: some View {
        VStack {
            Text(book.title)
            book.image
                .resizable()
                .frame(width: 64, height: 64)
        }
        .padding()
        .frame(minWidth: 120, maxHeight: 150)
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView(book: Book(title: "測試書籍", path: ""))
    }
}
