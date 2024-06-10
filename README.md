# qm-ios-challenge

# SwiftUI Text Updated Value Logger

## Project Summary

Develop a lightweight and noninvasive library for SwiftUI that facilitates the inspection of value mutations within a given view. The aim is to provide SwiftUI developers with a seamless solution that does not require direct modification of the view's implementation. The library should be easily injectable into the app's entry point with just one line of code, ensuring simplicity and efficiency. 

## Problem

Unlike UIKit's imperative approach where developers explicitly instantiate and modify UI elements, SwiftUI employs a declarative syntax that abstracts these details away, automatically managing UI elements based on state descriptions provided by the developer. 

## Attempts / Ideas

# Silly ideas / Exploratory

- The obvious non-working solution like using `Self.printchanges()` which only shows changes upon each re-render.
- Injecting a tapGestureRecognizer globally as a `UIApplication` extension that detects taps no matter the view hierarchy.
  
# Moderately Serious Ideas
- Action modifier on button that publishes changes any time it is pressed. That would however violate the contraints of the project since that would require directly modifiying the button's functionality.
- Environment and StateObserver were too invasive since it violated the constraints of set by the project instructions.

# Serious Ideas
- Reflection `(Mirror)` provided information about the properties contained within the View, but nothing more outside of its type and toggle state. I haven't found a working solution just yet.
- Method swizzling was considered but a working solution didn't present itself outside of using it within the `appDelegate` (using a property wrapper) for intialization / setup. Also, if a UIKit component wrapped in a `UIViewRepresentable` which might be feasible.

## Conclusion

