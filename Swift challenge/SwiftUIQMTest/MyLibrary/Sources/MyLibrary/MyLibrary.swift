// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI


/// A utility struct for inspecting properties of any instance in Swift using reflection.
public struct InspectorUtility {
    /// Inspects the specified instance using reflection and prints its properties and values.
        /// - Parameter instance: The instance to inspect.
    public static func inspect<T>(_ instance: T) {
        /// Iterates through each property or child of an instance
        /// Prints label to console if it exists
        let mirror = Mirror(reflecting: instance)
        for child in mirror.children {
            if let label = child.label {
                print("\(label): \(type(of: child.value)) = \(child.value)")
            }
        }
    }
}


/// A SwiftUI view struct that wraps another view and overlays a button that triggers an inspection of the wrapped view.
public struct OverlayView<Content: View>: View {
    @State private var toggleOn = false
    let content: Content
    
    /// Initializes the overlay view with the given content.
    /// - Parameter content: The view that will be overlaid with a button.
    public init(content: Content) {
        self.content = content
    }

    public var body: some View {
        content
            .overlay(
                VStack {
                    Spacer()
                    Button(action: {
                        // TODO: - Find a way to force update body / view. It seems to be only loading the intial state.
                        InspectorUtility.inspect(content.body)
                    }) {
                        Text("Bingo?")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                    .background(Color.clear)
                    .padding(.bottom, 200)
                }
            )
    }
}


