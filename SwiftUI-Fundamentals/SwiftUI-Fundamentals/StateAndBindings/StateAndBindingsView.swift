//
//  StateAndBindingsView.swift
//  SwiftUI-Fundamentals
//
//  Created by Abdulhalık Korkmaz on 28.04.2022.
//

import SwiftUI

struct StateAndBindingsView: View {
    
    @State private var swiftyColor: Color = .red
    @State private var swiftyOpacity: Double = 0.7
    
    var body: some View {
        VStack {
            VStack {
                SwiftyControls(swiftyColor: $swiftyColor, swiftyOpacity: $swiftyOpacity)
                
                
                Image(systemName: "swift")
                    .resizable()
                    .scaledToFit()
                    .padding(25)
                    .foregroundColor(.white)
                    .opacity(swiftyOpacity)
                    .background(swiftyColor)
                    .cornerRadius(50)
            }
            .padding(30)
            .background(.secondary)
            .cornerRadius(50)
            Spacer()
        }
        .padding()
        .padding(.top, 20.0)
        .edgesIgnoringSafeArea(.all)
        .background(.black)
    }
}

struct SwiftyControls: View {
    
    @Binding var swiftyColor: Color
    @Binding var swiftyOpacity: Double
    
    var body: some View {
        VStack {
            ColorPicker("Swifty Color", selection: $swiftyColor)
                .foregroundColor(.gray)
            HStack {
                Text("Change the opacity:")
                    .foregroundColor(.gray)
                Spacer()
                Slider(value: $swiftyOpacity, in: 0...1)
                    .frame(width: 100)
                    .accentColor(swiftyColor)
            }
        }
    }
}

struct StateAndBindingsView_Previews: PreviewProvider {
    static var previews: some View {
        StateAndBindingsView()
    }
}
