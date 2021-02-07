//
//  ContentView.swift
//  TheWeather
//
//  Created by Ricardo Duarte on 06/02/2021.
//

import SwiftUI

struct CityWeatherView: View {
    @ObservedObject private var viewModel = CityWeatherViewModel()
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: .topTrailing, endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text(viewModel.name)
                Text(viewModel.country)
            }
        }
    }
}
