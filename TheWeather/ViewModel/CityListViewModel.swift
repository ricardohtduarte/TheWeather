//
//  CityListViewModel.swift
//  TheWeather
//
//  Created by Ricardo Duarte on 07/02/2021.
//

import Foundation

struct CityPreview: Identifiable {
    let id = UUID()
    let name: String
    let temperature: Int
}

final class CityListViewModel: ObservableObject {
    let cityList: [CityPreview] =
        [
            CityPreview(name: "London", temperature: 2),
            CityPreview(name: "Lisbon", temperature: 10)
        ]
}
