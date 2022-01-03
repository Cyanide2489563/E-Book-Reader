//
//  RemoveBookView.swift
//  Reader
//
//  Created by user209963 on 2022/1/1.
//

import SwiftUI

struct RemoveBookView: View {
    
    var body: some View {
        ScrollView(.vertical) {
            Text("Hello")
        }
        .offset(y: 20)
        .navigationTitle("移除書籍")
    }
}

struct RemoveBookView_Previews: PreviewProvider {
    static var previews: some View {
        RemoveBookView()
    }
}
