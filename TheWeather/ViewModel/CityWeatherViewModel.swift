//
//  CityWeatherPage.swift
//  TheWeather
//
//  Created by Ricardo Duarte on 06/02/2021.
//

import Foundation
import Combine

final class CityWeatherViewModel: ObservableObject {
    private let weatherStackFacade = WeatherStackFacade()
    private var subscriptions = Set<AnyCancellable>()
    
    @Published var name: String = ""
    @Published var country: String = ""
    @Published var temperature: Int = 0

    init() {
        setupBindings()
    }
    
    func setupBindings() {
        weatherStackFacade.requestCityInfo()
            .sink(receiveCompletion: { result in
                switch result {
                case .failure(let error): print(error)
                case .finished: print("Finished publishing with success")
                }
            }, receiveValue: { cityInto in
                self.name = cityInto.location.name
                self.country = cityInto.location.country
                self.temperature = cityInto.current.temperature
            })
            .store(in: &subscriptions)
    }
}
