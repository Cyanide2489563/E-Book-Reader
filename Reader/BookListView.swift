//
//  BookListView.swift
//  Reader
//
//  Created by user209963 on 2022/1/1.
//

import SwiftUI

struct BookListView: View {
    @EnvironmentObject var viewModel: BooksViewModel
    
    var body: some View {
        ScrollView(.vertical) {
            let columns = Array(repeating: GridItem(), count: 2)    // 自動分成兩欄
            LazyVGrid(columns: columns) {
                ForEach(viewModel.books) { book in
                    NavigationLink {
                        ReaderView(book: book)
                    } label: {
                        BookView(book: book)
                    }
                }
                NavigationLink {
                    AddBookView()
                } label: {
                    Image(systemName: "plus.circle")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .padding()

                }
            }
        }
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}
