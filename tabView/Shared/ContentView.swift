//
//  ContentView.swift
//  Shared
//
//  Created by Zack Jung on 1/20/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        TabView(selection: $router.selectedTab) {
            NavigationView {
                Text("Main View")
                    .font(.title)
                    .navigationTitle(Text("1"))
            }
            .tabItem {
                Text("Main")
            }
            .tag(0)
            
            NavigationView {
                Text("Second View")
                    .font(.title)
                    .navigationTitle(Text("2"))
            }
            .tabItem {
                Text("Second")
            }
            .tag(1)
            
            NavigationView {
                Text("Third View")
                    .font(.title)
                    .navigationTitle(Text("3"))
            }
            .tabItem {
                Text("TURD")
            }
            .tag(2)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
