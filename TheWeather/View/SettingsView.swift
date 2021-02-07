//
//  SettingsView.swift
//  TheWeather
//
//  Created by Ricardo Duarte on 07/02/2021.
//

import SwiftUI

struct SettingsView: View {
    @State var isDarkMode: Bool = false
    @State private var selection = 0
    private let items: [String] = ["Celsius", "Fahrenheit"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Appearance")) {
                    Toggle(isOn: $isDarkMode) {
                        Text("Dark Mode")
                    }
                }
                Section(header: Text("Display Info")) {
                    Picker(selection: $selection, label: Text("Temperature")) {
                        ForEach(0..<items.count, id: \.self) { index in
                            Text(self.items[index]).tag(index)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

