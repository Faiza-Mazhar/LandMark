//
//  ContentView.swift
//  LandMark
//
//  Created by Faiza Mazhar on 26/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandMarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
