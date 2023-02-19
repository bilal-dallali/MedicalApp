//
//  NavBar.swift
//  Medical
//
//  Created by Bilal Dallali on 19/02/2023.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
                
            MessageView()
                .tabItem {
                    Image(systemName: "message")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            ScheduleView()
                .tabItem {
                    Image(systemName: "calendar")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
