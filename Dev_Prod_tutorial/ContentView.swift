//
//  ContentView.swift
//  Dev_Prod_tutorial
//
//  Created by Jeff Jeong on 2021/10/16.
//

import SwiftUI

struct ContentView: View {
    
    @State var welcomeTitle: String = ""
    
    var body: some View {
        Text(welcomeTitle)
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding()
            .onAppear(perform: {
                #if DEBUG
                welcomeTitle = "디버그 모드 입니다"
                #else
                welcomeTitle = "운영 모드 입니다"
                #endif
            })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
