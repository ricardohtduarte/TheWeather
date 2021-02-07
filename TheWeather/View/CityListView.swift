//
//  CitiesListView.swift
//  TheWeather
//
//  Created by Ricardo Duarte on 07/02/2021.
//

import SwiftUI

struct CityListView: View {
    @State private var isShowingSheet = false
    @ObservedObject private var viewModel = CityListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.cityList) { city in
                CityListRow(city: city)
            }
            .navigationBarTitle(Text("My Cities"))
            .navigationBarItems(trailing:
                                    Button(action: {
                                        self.isShowingSheet.toggle()
                                    }) {
                                        Image(systemName: "plus").imageScale(.large)
                                    }
                .sheet(isPresented: $isShowingSheet) {
                    AddNewCityView()
                }
            )
        }
    }
}

struct CityListRow: View {
    let city: CityPreview
    
    var body: some View {
        NavigationLink(destination: CityWeatherView()) {
            HStack {
                Text(city.name)
                Spacer()
                Text(String(city.temperature))
            }
        }
        .padding()
        .font(.system(size: 50))
        .background(Color.blue)
        .foregroundColor(.white)
    }
}
