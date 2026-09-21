//
//  ContentView.swift
//  Awesome!
//
//  Created by John Gallaugher on 9/14/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    var body: some View {
        VStack {
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 250, height: 250)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .frame(height: 40)
            
            Spacer()
            
            HStack {
                Button("Awesome", systemImage: "button.programmable") {
                    message = "You Are Awesome!"
                    imageName = "sun.max"
                }
                
                Button("Great", systemImage: "pointer.arrow") {
                    message = "You Are Great!"
                    imageName = "sparkles"
                }
            }
            .buttonStyle(.glassProminent)
            .tint(.orange)
            .font(.title2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
