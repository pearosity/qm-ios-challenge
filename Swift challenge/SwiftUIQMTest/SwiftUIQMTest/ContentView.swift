//
//  ContentView.swift
//  SwiftUIQMTest
//
//  Created by Aaron Ash on 10/20/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var toggleOn = false
    
    var body: some View {
        Button(action: {
            self.toggleOn.toggle()
        }) {
            Text("Show details")
        }
        
        Text("state: \(self.toggleOn ? "on" : "off")")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


