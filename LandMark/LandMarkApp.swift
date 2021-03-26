//
//  LandMarkApp.swift
//  LandMark
//
//  Created by Faiza Mazhar on 26/03/2021.
//

import SwiftUI

@main
struct LandMarkApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
