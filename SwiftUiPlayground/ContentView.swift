//
//  ContentView.swift
//  SwiftUiPlayground
//
//  Created by Karsten Westra on 07/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack(alignment: .leading) {
        Text("Turtle Rock")
          .font(.title)
          .foregroundColor(Color.green)
        HStack {
          Text("Joshua Tree national Park")
            .font(.subheadline)
          Spacer()
          Text("California")
            .font(.subheadline)
        }
      }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
