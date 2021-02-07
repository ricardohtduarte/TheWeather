//
//  CityAppTabView.swift
//  TheWeather
//
//  Created by Ricardo Duarte on 07/02/2021.
//

import SwiftUI

struct CityAppTabView: View {
    var body: some View {
        TabView {
            CityListView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("My Cities")
                }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
        }
    }
}
