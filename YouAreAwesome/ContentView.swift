//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by 刘佳雨 on 2025/1/12.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    @State private var lastMessageNumber = -1 // lastMessageNumber will never be -1
    @State private var lastImageNumber = -1
    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height:100)
                .animation(.easeIn(duration: 0.15), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius:30))
                .shadow(radius:30)
                .animation(.default, value: imageName)
            
            Spacer()
            
            Button("Show Message") {
                let messages = ["You are Awesome!",
                                "When the Genius Bar Needs Help, They Call You!",
                                "You are Great!",
                                "You Are Fantastic!",
                                "Fabulous? That's You!"]
                
                var messageNumber = Int.random(in: 0...messages.count-1)
                while messageNumber == lastMessageNumber{
                    messageNumber = Int.random(in: 0...messages.count-1)
                }
                message = messages[messageNumber]
                lastMessageNumber = messageNumber
                    
            
                repeat {
                    imageNumber = Int.random(in: 0...9)
                }while imageNumber == lastImageNumber
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.blue)
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
