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
            Text("本應用程式為 PDF 閱讀器\n作者：董學翰\n\nEmail：slm789456123@gmail.com")
                .offset(x: -50, y: -300)
        }
        .navigationTitle("關於 App")
    }
}

struct AboutAppView_Previews: PreviewProvider {
    static var previews: some View {
        AboutAppView()
    }
}
