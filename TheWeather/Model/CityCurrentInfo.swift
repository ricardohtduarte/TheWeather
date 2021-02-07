//
//  CurrentWeather.swift
//  TheWeather
//
//  Created by Ricardo Duarte on 06/02/2021.
//

import Foundation

struct CityCurrentInfo: Codable {
    let location: Location
    let current: CurrentWeatherDetails
}

struct Location: Codable {
    let name: String
    let country: String
    let lat: String
    let lon: String
}

struct CurrentWeatherDetails: Codable {
    let temperature: Int
    let wind_speed: Int
    let pressure: Int
    let precip: Float
    let humidity: Int
    let is_day: String
    let weather_descriptions: [String]
    let weather_icons: [String]
}
