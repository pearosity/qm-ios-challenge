//
//  SwiftUIQMTestApp.swift
//  SwiftUIQMTest
//
//  Created by Aaron Ash on 10/20/20.
//

/*
 Hey! Welcome to the Quantum Metric technical challenge.
 
 Here we have a basic SwiftUI app with a button, the button changes a label's text.
 The goal is to build an external library, (can be static or dynamic, doesn't matter),
 integrate the library into this app/project, and have the library log to the console
 whenever the text changes, and what the new text is.
 
 The library can be written using Swift, Objective-C, or whatever you want.
 You can use KVO, swizzling, or any technique you like.
 You are welcome to add a single line here inside SwiftUIQMTestApp to initialize your library,
 and you can pass in a variable if you wish (bonus points if you don't!)
 Please don't modify the ContentView.swift file.
 
 Bonus points if you log the view/layer that's having it's text changed each time it changes
 
 This is not a simple challenge (don't expect to find the solution on stackoverflow).
 If you are unable to complete it within the time you have available, you can write
 out the steps you took and things you tried in order to make progress in a short paragraph.
 
 Deliverables:
 -This Xcode project with your library integrated (you can .zip it or push it to git somewhere we can access it)
 -The source code for your library (it can be in this xcodeproj, you can make a workspace, or use a separate Xcode project, whatever you prefer)
 -Quick paragraph on how it works, you can include the explanation in your code in a comment
 
 If you have any questions please email me, krussell@quantummetric.com
 
 Good luck!
 Kip
 Quantum Metric Mobile Team
 */

import SwiftUI
import MyLibrary

@main
struct SwiftUIQMTestApp: App {
    var body: some Scene {
        WindowGroup {
            OverlayView(content: ContentView())
        }
    }
}
