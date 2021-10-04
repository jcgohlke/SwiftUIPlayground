//
//  LazyStacksView.swift
//  SwiftUIPlayground
//
//  Created by Joben Gohlke on 8/18/21.
//

import SwiftUI

struct LazyStacksView: View {
  var body: some View {
    ScrollView {
      LazyVStack(spacing: 16) {
        ForEach(0..<10000) { item in
          RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .frame(height: 100)
            .shadow(radius: 100)
        }
      }
      .padding()
    }
  }
}

struct LazyStacksView_Previews: PreviewProvider {
  static var previews: some View {
    LazyStacksView()
  }
}
