//
//  CircleImageView.swift
//  SwiftUiPlayground
//
//  Created by Karsten Westra on 07/07/2021.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("turtlerock")
          .clipShape(Circle())
          .overlay(Circle().stroke(Color.white, lineWidth: 4))
          .shadow(radius: 7)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
