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
    var body: some View {
        VStack {
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius:30))
                .shadow(radius:30)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
               // .multilineTextAlignment(.center)
            Spacer()
            
            Button("Show Message") {
                let messages = ["You are Awesome!",
                            "You are Great!",
                            "You Are Fantastic!",
                            "Fabulous? That's You!",
                            "When the Genius Bar Needs Help, They Call You!"]
                
                message = messages[messageNumber]
                messageNumber += 1
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                
                imageName = "image\(imageNumber)"
                if imageNumber > 9{
                    imageNumber = 0
                }
                imageNumber += 1
                
                
//                let message1 = "You are Awesome!"
//                let message2 = "You are Great!"
//                let message3 = "You Are Fantastic!"
//                let message4 = "Fabulous? That's You!"
                
//              message = (message == message1 ? message2 : message1)
//              imageName = (imageName == "image0" ? "image1" : "image0")
                
                //TODO: - Update the imageName variable -
//                imageNumber = imageNumber + 1
             
                
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
