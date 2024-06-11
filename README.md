# qm-ios-challenge

# SwiftUI Text Updated Value Logger

## Project Summary

Develop a lightweight and noninvasive library for SwiftUI that facilitates the inspection of value mutations within a given view. The aim is to provide SwiftUI developers with a seamless solution that does not require direct modification of the view's implementation. The library should be easily injectable into the app's entry point with just one line of code, ensuring simplicity and efficiency. 

## Problem

Unlike UIKit's imperative approach where developers explicitly instantiate and modify UI elements, SwiftUI employs a declarative syntax that abstracts these details away, automatically managing UI elements based on state descriptions provided by the developer. 

## Attempts

### Exploratory

- I tried using a direct method like `Self.printchanges()`, which seemed straightforward but only displayed changes with each view re-render, missing real-time updates without any actionable data.
- Global Interaction Detection: Another idea was to add a `tapGestureRecognizer` globally via a UIApplication extension. Explored ideas around UIApplication extensions. 

### Other ideas
  
- Action Modifier on Buttons: I explored using an action modifier on buttons to publish changes whenever they're pressed. However, this approach would breach the project's constraints as it involves directly altering the button's inherent behavior.
- Using `Environment` and `StateObserver`: These were considered too intrusive and ultimately disregarded as they also conflicted with the project's guidelines.
- Reflection with `Mirror`: This tool helped identify properties within the View, such as types and toggle states, but it didn’t extend beyond these basics. I’m still searching for a viable solution here.
- `Method Swizzling`: This technique was on the table, especially for initializations within the appDelegate via a property wrapper. Another potential application could be in a UIKit component encapsulated within a UIViewRepresentable, though a working implementation has yet to be realized.
- Tree observation was another thought, but not viable due to SwiftUI's declarative nature.

- Interestingly enough the solution could be a composition of these techniques which might include inspecting the `View.body` on load: 

<img width="721" alt="Screenshot 2024-06-11 at 11 31 34 AM" src="https://github.com/pearosity/qm-ios-challenge/assets/168829978/2966602c-a28b-451b-bd4c-07e651680c2d">

Determine a way to detect when changes or re-render of `ContentView` AND then inspect `View.body` after those changes have reflected -- revealing the updated values. 

Which led me to consider the idea of creating an overlay of button that accesses `contentView` each time the button is pressed to reveal its re-rendered form: 

<img width="351" alt="Screenshot 2024-06-11 at 1 01 32 PM" src="https://github.com/pearosity/qm-ios-challenge/assets/168829978/6ecdb3d7-6df9-48a6-b177-6ee8f4fad6d5">



