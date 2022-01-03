//
//  RemoveBookView.swift
//  Reader
//
//  Created by user209963 on 2022/1/1.
//

import SwiftUI

struct RemoveBookView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var viewModel: BooksViewModel
    @State var showAlert = false
    
    var body: some View {
        ZStack {
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
            
            Button {
                showAlert.toggle()
            } label: {
                if viewModel.getDeleteBooksCount() > 0 {
                    Text("刪除書籍")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 40)
                        .background(Color.red)
                        .cornerRadius(15)
                        .padding()
                }
            }
            .offset(y: 320)
            .alert("書籍刪除確認", isPresented: $showAlert, actions: {
                  Button("確定", role: .cancel, action: {
                      viewModel.removeBooks()
                      self.presentationMode.wrappedValue.dismiss()
                  })
                  Button("取消", role: .destructive, action: {
                      viewModel.deleteBooks.removeAll()
                      self.presentationMode.wrappedValue.dismiss()
                  })
                }, message: {
                    Text("將刪除" + String(viewModel.getDeleteBooksCount()) + "本書籍")
                })
        }
    }
}

struct DeleteBookView: View {
    @EnvironmentObject var viewModel: BooksViewModel
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
                if delete {
                    viewModel.removeBook(book: book)
                } else {
                    viewModel.reAddBook(book: book)
                }
            }
    }
}

struct RemoveBookView_Previews: PreviewProvider {
    static var previews: some View {
        RemoveBookView()
    }
}
