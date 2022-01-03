//
//  RemoveBookView.swift
//  Reader
//
//  Created by user209963 on 2022/1/1.
//

import SwiftUI

struct RemoveBookView: View {
    @EnvironmentObject var viewModel: BooksViewModel
    @State var deleteBooks = [Book]()
    
    var body: some View {
        ScrollView(.vertical) {
            let columns = Array(repeating: GridItem(), count: 2)    // 自動分成兩欄
            LazyVGrid(columns: columns) {
                ForEach(viewModel.books) { book in
                    DeleteBookView(book: book)
                }
            }
        }
        .offset(y: 20)
        .navigationTitle("移除書籍")
    }
}

struct DeleteBookView: View {
    var book: Book
    @State var delete = false
    
    var body: some View {
        if delete {
            bookView.overlay(
                Image(systemName: "multiply.circle")
                    .foregroundColor(.red),
                alignment: .topTrailing)
        } else {
            bookView
        }
    }
    
    var bookView: some View {
        BookView(book: book)
            .onTapGesture {
                delete.toggle()
            }
    }
}

struct RemoveBookView_Previews: PreviewProvider {
    static var previews: some View {
        RemoveBookView()
    }
}
