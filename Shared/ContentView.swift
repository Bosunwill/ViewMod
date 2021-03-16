//
//  ContentView.swift
//  Shared
//
//  Created by Gui Ndikum on 3/15/21.
//

import SwiftUI
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
            .background(Color.green)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .padding()
            .background(Color.yellow)
            .clipShape(Capsule())
    }
}
extension View {
    func TitleStyle() -> some View {
        self.modifier(Title())
    }
}
struct ContentView: View {
    let text1 = Text("Tactician the main text!")
    var body: some View {
        VStack{
            text1
                .TitleStyle()
        Text("Just another one!")
            .TitleStyle()
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
