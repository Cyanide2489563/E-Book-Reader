//
//  AddBookView.swift
//  Reader
//
//  Created by user209963 on 2022/1/1.
//

import SwiftUI

struct AddBookView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var viewModel: BooksViewModel
    
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.newBooks) { book in
                    Text(book.title)
                        .onTapGesture {
                            viewModel.addBook(book: book)
                            let index = viewModel.newBooks.firstIndex(of: book)
                            viewModel.newBooks.remove(at: index!)
                            self.presentationMode.wrappedValue.dismiss()
                        }
                }
            }
        }
    }
}

struct AddBookView_Previews: PreviewProvider {
    static var previews: some View {
        AddBookView()
    }
}
