//
//  AboutAppView.swift
//  Reader
//
//  Created by user209963 on 2021/12/30.
//

import SwiftUI

struct AboutAppView: View {
    var body: some View {
        VStack {
            
            Text("Test")
                .offset(x: -150, y: -350)
        }
        .navigationTitle("關於 App")
    }
}

struct AboutAppView_Previews: PreviewProvider {
    static var previews: some View {
        AboutAppView()
    }
}
