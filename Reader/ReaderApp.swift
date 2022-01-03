//
//  ReaderApp.swift
//  Reader
//
//  Created by guest1 on 2021/12/13.
//

import SwiftUI

@main
struct ReaderApp: App {
    @StateObject var viewModel = BooksViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
