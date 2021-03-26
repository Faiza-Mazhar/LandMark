//
//  LandMarkList.swift
//  LandMark
//
//  Created by Faiza Mazhar on 26/03/2021.
//

import SwiftUI

struct LandMarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }.navigationTitle("Landmarks")
        }
    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandMarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
