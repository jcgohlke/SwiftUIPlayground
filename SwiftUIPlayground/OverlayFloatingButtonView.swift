//
//  MaxWidthView.swift
//  SwiftUIPlayground
//
//  Created by Joben Gohlke on 8/18/21.
//  From: https://designcode.io/swiftui-handbook-max-width-and-frame-alignment

import SwiftUI

struct OverlayFloatingButtonView: View {
  var body: some View {
    Rectangle()
      .fill(Color.blue)
      .ignoresSafeArea()
      .overlay(
    Image(systemName: "xmark")
      .frame(width: 32, height: 32)
      .background(Circle().stroke())
      .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
      .padding()
    )
  }
}

struct MaxWidthView_Previews: PreviewProvider {
  static var previews: some View {
    OverlayFloatingButtonView()
  }
}
