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
        Button("Tap me"){
            self.animationAmount *= 1.2
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(Color.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .animation(.easeOut)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
