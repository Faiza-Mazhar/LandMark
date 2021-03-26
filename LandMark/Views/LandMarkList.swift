//
//  LandMarkList.swift
//  LandMark
//
//  Created by Faiza Mazhar on 26/03/2021.
//

import SwiftUI

struct LandMarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavouriteOnly = false

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavouriteOnly || landmark.isFavorite)

        }
    }
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavouriteOnly, label: {
                    Text("Favorites Only")
                })
                 ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }.navigationTitle("Landmarks")
        }
    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkList().environmentObject(ModelData())
    }
}
