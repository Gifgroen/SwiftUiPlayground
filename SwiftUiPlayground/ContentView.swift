//
//  ContentView.swift
//  SwiftUiPlayground
//
//  Created by Karsten Westra on 07/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack {
        MapKitView()
          .ignoresSafeArea()
          .frame(height: 256)

        CircleImageView()
          .offset(y: -130)
          .padding(.bottom, -130)

        VStack(alignment: .leading) {
          Text("Turtle Rock")
            .font(.title)
            .foregroundColor(Color.green)

          HStack {
            Text("Joshua Tree national Park")
            Spacer()
            Text("California")
          }
          .font(.subheadline)
          .foregroundColor(.secondary)
          
          Divider()
          
          Text("About Turtle Rock")
            .font(.title2)
          Text("Description goes here")
          
        }
        .padding()
        
        Spacer()
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
