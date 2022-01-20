//
//  tabViewApp.swift
//  Shared
//
//  Created by Zack Jung on 1/20/22.
//

import SwiftUI

@main
struct tabViewApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(Router.shared)
        }
    }
}
