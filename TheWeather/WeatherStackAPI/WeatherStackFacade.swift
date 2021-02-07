//
//  WeatherStackFacade.swift
//  TheWeather
//
//  Created by Ricardo Duarte on 06/02/2021.
//

import Foundation
import Combine

final class WeatherStackFacade {
    let networking = NetworkManager()

    func requestCityInfo() -> AnyPublisher<CityCurrentInfo, Error> {
        networking.request(with: URL(string: "http://api.weatherstack.com/current?access_key=3ad9cea9b2d1044b37bcf6238b5b29e0&query=New%20York")!)
    }
}
