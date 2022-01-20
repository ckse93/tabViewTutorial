//
//  Router.swift
//  tabView
//
//  Created by Zack Jung on 1/20/22.
//

import Foundation

class Router: ObservableObject {
    static let shared = Router()  // singleton and available for everyone!
    
    @Published var selectedTab = 0
}
