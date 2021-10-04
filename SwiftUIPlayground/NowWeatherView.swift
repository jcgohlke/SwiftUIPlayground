//
//  WeatherView.swift
//  SwiftUIPlayground
//
//  Created by Joben Gohlke on 7/1/21.
//

import SwiftUI

struct NowWeatherView: View {
  var body: some View {
    HStack {
      VStack {
        Text("N")
        Text("O")
        Text("W")
      }
      .padding(5)
      .foregroundColor(.init(white: 0.6))
      
//      Spacer()
      
      VStack(alignment: .leading, spacing: 10) {
        VStack(alignment: .leading) {
          Text("TEMPERATURE")
            .font(.caption)
            .bold()
            .foregroundColor(.init(white: 0.8, opacity: 1.0))
          
          HStack(alignment: .firstTextBaseline) {
            Text("83℉")
              .font(.title)
              .bold()
            
            Spacer()
            
            Text("but feels like")
            
            Text("89℉")
              .font(.title)
              .bold()
            
            Image(systemName: "chevron.up.square.fill")
              .font(.title)
              .foregroundColor(.red)
          }
        }
        
        VStack(alignment: .leading) {
          Text("PRECIPITATION")
            .font(.caption)
            .bold()
            .foregroundColor(.init(white: 0.8, opacity: 1.0))
          
          Text("Very high chance, but only a drizzle.")
            .font(.title3)
          
          Text("100% at 0.01 inches/hour")
            .font(.caption)
            .italic()
            .foregroundColor(.init(white: 0.6, opacity: 1.0))
        }
      }
      .padding()
      .background(Color.white)
      .cornerRadius(8)
      .shadow(radius: 4)
    }
  }
}

struct NowWeatherView_Previews: PreviewProvider {
  static var previews: some View {
    NowWeatherView()
      .previewLayout(.fixed(width: 375, height: 140))
  }
}
