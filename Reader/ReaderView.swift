//
//  ReaderView.swift
//  Reader
//
//  Created by user209963 on 2022/1/1.
//

import SwiftUI

struct ReaderView: View {
    var book: Book
    
    var body: some View {
        Text(book.title)
            .navigationTitle(book.title)
        
        HStack {
            Button {
                
            } label: {
                Image(systemName: "arrow.left")
                Text("上一頁")
            }
            
            Button {
                
            } label: {
                Text("下一頁")
                Image(systemName: "arrow.right")
            }
        }
        .background(Color.gray)
        .frame(width: UIScreen.main.bounds.width)
        .offset(y: 350)
    }
}

struct ReaderView_Previews: PreviewProvider {
    static var previews: some View {
        ReaderView(book: Book(title: "測試書籍", path: ""))
    }
}
