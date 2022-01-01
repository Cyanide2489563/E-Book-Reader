//
//  ContentView.swift
//  Reader
//
//  Created by guest1 on 2021/12/13.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.ignoresSafeArea(.all, edges: .all)
                VStack {
                    BookListView()
                }
                GeometryReader { _ in
                    HStack {
                        Spacer()
                        if (isShowing) {
                            SideMenuView(isShowing: $isShowing)
                                .offset(x: isShowing ? -(UIScreen.main.bounds.width / 2) : -UIScreen.main.bounds.width)
                                .animation(.easeInOut(duration: 0.5), value: isShowing)
                        }
                    }
                }
                .background(Color.black.opacity(isShowing ? 0.5 : 0))
            }
            .onAppear {
                isShowing = false
            }
            .navigationBarTitle("電子書閱讀器")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        self.isShowing.toggle()
                    }) {
                        Image(systemName: isShowing ? "xmark" : "text.justify")
                            .font(.title)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
