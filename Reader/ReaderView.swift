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
        
        HStack {
            let size = UIScreen.main.bounds.width / 2
            Button {
                
            } label: {
                Image(systemName: "arrow.left")
                Text("上一頁")
            }
            .frame(width: size, height: 40)
            
            Button {
                
            } label: {
                Text("下一頁")
                Image(systemName: "arrow.right")
            }
            .frame(width: size, height: 40)
        }
        .navigationTitle(book.title)
        .background(Color.gray)
        .offset(y: 350)
    }
    
    //.frame(width: UIScreen.main.bounds.width)
}

struct ReaderView_Previews: PreviewProvider {
    static var previews: some View {
        ReaderView(book: Book(title: "測試書籍", path: ""))
    }
}
