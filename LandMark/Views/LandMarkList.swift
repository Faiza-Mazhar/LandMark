//
//  LandMarkList.swift
//  LandMark
//
//  Created by Faiza Mazhar on 26/03/2021.
//

import SwiftUI

struct LandMarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkList()
    }
}
