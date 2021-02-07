//
//  NetworkManager.swift
//  TheWeather
//
//  Created by Ricardo Duarte on 06/02/2021.
//

import Foundation
import Combine

protocol NetworkManagerProcotol {
    func request<T:Codable>(with urlString: String) -> AnyPublisher<T, NetworkError>
}

enum NetworkError: Error {
    case urlNotValid

    var localizedDescription: String {
        switch self {
        case .urlNotValid:
            return "Error: could not create URL"
        }
    }
}

final class NetworkManager {
    func request<T:Codable>(with url: URL) -> AnyPublisher<T, Error> {
        URLSession.shared
            .dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
