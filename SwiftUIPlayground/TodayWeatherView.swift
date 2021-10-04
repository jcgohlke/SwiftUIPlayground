//
//  TodayWeatherView.swift
//  SwiftUIPlayground
//
//  Created by Joben Gohlke on 7/1/21.
//

import SwiftUI

struct TodayWeatherView: View {
  var body: some View {
    HStack {
      VStack {
        Text("T")
        Text("O")
        Text("D")
        Text("A")
        Text("Y")
      }
      .padding(5)
      .foregroundColor(.init(white: 0.6))
      
      VStack(alignment: .leading, spacing: 10) {
        VStack(alignment: .leading, spacing: 5) {
          Text("LOWS AND HIGHS")
            .font(.caption)
            .bold()
            .foregroundColor(.init(white: 0.8, opacity: 1.0))
          
          Text("Coolest at 2:00 AM (74℉)")
          
          Text("Hottest at 12:00 PM (95℉)")
        
          Text("Wettest at 6:29 AM (0.11 inches/hour)")
          
          Text("Sunrise at 6:29 AM, Sunset at 8:19 PM")
          
          Text("Chance of rain: 79%")
          
          Text("DAILY SUMMARY")
            .font(.caption)
            .bold()
            .foregroundColor(.init(white: 0.8, opacity: 1.0))
          
          Text("Rain starting in the afternoon, continuing until evening.")
        }
      }
      .padding()
      .background(Color.white)
      .cornerRadius(8)
      .shadow(radius: 4)
    }
  }
}

struct TodayWeatherView_Previews: PreviewProvider {
  static var previews: some View {
    TodayWeatherView()
      .previewLayout(.fixed(width: 375, height: 250))
  }
}
