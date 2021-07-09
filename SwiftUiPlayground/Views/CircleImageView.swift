//
//  CircleImageView.swift
//  SwiftUiPlayground
//
//  Created by Karsten Westra on 07/07/2021.
//

import SwiftUI

struct CircleImageView: View {
  var image: Image
  
  var body: some View {
    image
      .clipShape(Circle())
      .overlay(Circle().stroke(Color.white, lineWidth: 4))
      .shadow(radius: 7)
  }
}

struct CircleImageView_Previews: PreviewProvider {
  static var previews: some View {
    CircleImageView(image: Image("turtlerock"))
  }
}
