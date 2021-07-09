//
//  LandmarkDetail.swift
//  SwiftUiPlayground
//
//  Created by Karsten Westra on 09/07/2021.
//

import SwiftUI

struct LandmarkDetail: View {
  var landmark: Landmark
  
    var body: some View {
      ScrollView {
        
        MapKitView(coordinate: landmark.locationCoordinate)
          .ignoresSafeArea(edges: .top)
          .frame(height: 300)

        CircleImageView(image: landmark.image)
          .offset(y: -130)
          .padding(.bottom, -130)

        VStack(alignment: .leading) {
          Text(landmark.name)
            .font(.title)
            .foregroundColor(.primary)

          HStack {
            Text(landmark.park)
            Spacer()
            Text(landmark.state)
          }
          .font(.subheadline)
          .foregroundColor(.secondary)
          
          Divider()
          
          Text("About \(landmark.name)")
            .font(.title2)
          Text(landmark.description)
        }
        .padding()
      }
      .navigationTitle(landmark.name)
      .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[4])
    }
}
