//
//  SideMenuView.swift
//  PDF-Reader
//
//  Created by guest1 on 2021/12/13.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack {
            Divider()
                .frame(width: 150, height: 2)
                .background(Color.white)
                .padding(.horizontal, 8)
            
            NavigationLink(destination: AddBookView(), label: {
                Text("新增書籍")
                    .font(.title)
                    .underline()
                    .foregroundColor(.white)
                    .padding(.vertical, 5)
            })
            
            NavigationLink(destination: RemoveBookView(), label: {
                Text("移除書籍")
                    .font(.title)
                    .underline()
                    .foregroundColor(.white)
                    .padding(.vertical, 5)
            })
            
            Button(action: {
                exit(-1)    // exit application
            }) {
                Text("離開")
                    .font(.title)
                    .underline()
                    .foregroundColor(.white)
                    .padding(.vertical, 5)
            }
            
            NavigationLink(destination: AboutAppView(), label: {
                Text("關於")
                    .font(.title)
                    .underline()
                    .foregroundColor(.white)
                    .padding(.vertical, 5)
            })
            Spacer()
        }
        .padding()
        .background(Color.black)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
