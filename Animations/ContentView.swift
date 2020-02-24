//
//  ContentView.swift
//  Animations
//
//  Created by Aaryan Kothari on 24/02/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount : CGFloat = 1
    var body: some View {
        VStack {
            Spacer()
            Stepper("stepper",value: $animationAmount.animation(
                Animation.easeInOut(duration: 1)
                    .repeatForever(autoreverses: false)
            ), in: 1...10)
            Spacer()
            Button("Tap me"){
                self.animationAmount += 1
            }
            .padding(50)
            .background(Color.red)
            .foregroundColor(Color.white)
            .clipShape(Circle())
//        .overlay(
//            Circle()
//                .stroke(Color.red)
            .scaleEffect(animationAmount)
//            .opacity(Double(2-animationAmount))
//            .animation(
//                Animation.easeInOut(duration: 1)
//                .repeatForever(autoreverses: false)
//            )
//            )
        }
  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
