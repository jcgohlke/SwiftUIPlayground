//
//  AirplaneTrips.swift
//  SwiftUIPlayground
//
//  Created by Joben Gohlke on 6/14/21.
//

import SwiftUI

struct AirplaneTrips: View {
  
  @SceneStorage("selectedAirplaneSubview")
  var selectedAirplaneSubview: Subview = .domestic
  
  let subviews = Subview.allCases
  
  var body: some View {
    NavigationView {
      List {
        switch selectedAirplaneSubview {
          case .domestic:
            Text("Auckland 14.04.2020")
            Text("Wellington 10.05.2020")
          case .international:
            Text("Sydney 17.04.2020")
            Text("Singapore 12.05.2020")
        }
      }
      .navigationBarItems(
        trailing: Picker(
          "Airplane Trips",
          selection: $selectedAirplaneSubview
        ) {
          ForEach(self.subviews, id: \.self) { subview in
            Text(subview.rawValue.capitalized)
          }
        }
        .labelsHidden()
        .pickerStyle(SegmentedPickerStyle())
        .frame(width: 250)
      )
      .navigationTitle("Airplane Trips")
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
  
  enum Subview: String, CaseIterable {
    case domestic
    case international
  }
}

struct AirplaneTrips_Previews: PreviewProvider {
  static var previews: some View {
    AirplaneTrips()
  }
}
