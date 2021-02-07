//
//  CitiesListView.swift
//  TheWeather
//
//  Created by Ricardo Duarte on 07/02/2021.
//

import SwiftUI

struct CityListView: View {
    @State private var isShowingSheet = false
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CityWeatherView()) {
                    HStack {
                        Text("Lisbon")
                        Spacer()
                        Text("20º")
                    }
                    .padding()
                    .font(.system(size: 50))
                }
                .background(Color.blue).foregroundColor(.white)
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
