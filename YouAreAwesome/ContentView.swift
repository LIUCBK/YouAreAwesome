//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by 刘佳雨 on 2025/1/12.
//

import SwiftUI

struct ContentView: View {
    @State var message = "I AM A Programmer!"
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Button("Click Me!") {
                message = "Awesome!"
            }
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
