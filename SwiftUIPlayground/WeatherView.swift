//
//  WeatherView.swift
//  SwiftUIPlayground
//
//  Created by Joben Gohlke on 7/1/21.
//

import SwiftUI

struct WeatherView: View {
  var body: some View {
    ZStack {
      Rectangle()
        .foregroundColor(.init(white: 0.9))
        .edgesIgnoringSafeArea(.all)
      
      VStack {
        NowWeatherView()
          .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 20))
      
        TodayWeatherView()
          .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 20))
        
        Spacer()
      }
    }
  }
}

struct WeatherView_Previews: PreviewProvider {
  static var previews: some View {
    WeatherView()
  }
}
