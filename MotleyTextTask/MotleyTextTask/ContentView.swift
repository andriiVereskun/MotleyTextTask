//
//  ContentView.swift
//  MotleyTextTask
//
//  Created by Andrii's Macbook  on 04.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var containerWidth: CGFloat = 150

    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 20) {
                TextContainer(width: $containerWidth)
                Slider(value: $containerWidth, in: 100...300)
                    .padding()
            }
            Spacer()
        }
    }
}

struct TextContainer: View {
    @Binding var width: CGFloat
    var body: some View {
        Text("\(Text("Марафон").foregroundColor(.pink)) по SwiftUI  \(Text("Отцовский пинок").foregroundColor(Color.blue).font(.largeTitle))")
            .frame(width: width)
            .lineLimit(nil)
            .allowsTightening(true)
            .fixedSize(horizontal: false, vertical: true)
            .padding()
            .background(Color.white)
            .border(Color.red, width: 2)
    }
}

#Preview {
    ContentView()
}
