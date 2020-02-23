//
//  ContentView.swift
//  Animations
//
//  Created by Aaryan Kothari on 24/02/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Text("Hello, World!")
            Image(systemName: "person.fill")
            Text("yo")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
