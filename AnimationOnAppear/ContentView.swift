//
//  ContentView.swift
//  AnimationOnAppear
//
//  Created by ramil on 24.03.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isVisible = false
    
    var body: some View {
        Text("Hello, SwiftUI!")
            .font(.largeTitle)
            .fontWeight(.black)
            .opacity(isVisible ? 1 : 0)
            .scaleEffect(isVisible ? 1.5 : 0)
            .onAppear {
                withAnimation(.spring(response: 0.4, dampingFraction: 0.2, blendDuration: 0)) {
                    self.isVisible.toggle()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
