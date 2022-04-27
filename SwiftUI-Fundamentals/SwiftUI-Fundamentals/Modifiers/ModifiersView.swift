//
//  ModifiersView.swift
//  My SwiftUI
//
//  Created by Abdulhalık Korkmaz on 28.04.2022.
//

import SwiftUI

struct ModifiersView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable() // not some view, releated to image
                .padding(24)
                .frame(width: 100.0, height: 100.0)
                .background(Color.orange)
                .cornerRadius(20.0)
            Text("Hello, world!")
                .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                .kerning(5.0)
                .padding()
        }
    }
}

struct Challenge_1: View {
  var body: some View {
    Image("monster")
          .resizable()
          .shadow(radius: 20.0)
          .frame(width: 400.0, height: 400.0)
          .border(.green, width: 7.0)
          .scaledToFill()
  }
}

struct Challenge_2: View {
    var body: some View {
        VStack {
            Image(systemName: "sun.max.fill")
                .renderingMode(.original)
                .resizable()
                .foregroundColor(Color.yellow)
                .frame(width: 50, height: 50)
            
            Text("Sunny")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            
            Text("H: 61° L: 44°")
                .foregroundColor(.white)
                .opacity(0.7)
        }
        .padding()
        .background(
            LinearGradient(
                gradient: Gradient(
                    colors: [Color.white, Color.blue]),
                startPoint: .topLeading, endPoint: .bottomTrailing
            )
        )
        .cornerRadius(15)
    }
}

struct ModifiersView_Previews: PreviewProvider {
    static var previews: some View {
        Challenge_2()
          .previewLayout(.sizeThatFits)
          .padding()

        VStack {
          Image("challenge 3")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 180)
        }
        .previewLayout(.sizeThatFits)
    }
}
