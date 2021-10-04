//
//  LazyGridsView.swift
//  SwiftUIPlayground
//
//  Created by Joben Gohlke on 8/18/21.
//

import SwiftUI

struct LazyVGridView: View {
  var body: some View {
    LazyVGrid(
      columns: [
        GridItem(
          .adaptive(minimum: 80),
          spacing: 16
        )
      ],
      spacing: 16
    ) {
      ForEach(0..<12) { _ in
        Rectangle()
          .fill(Color.blue)
          .frame(height: 100)
      }
    }
  }
}

struct LazyHGridView: View {
  var body: some View {
    LazyHGrid(
      rows: [
        GridItem(
          .adaptive(minimum: 80),
          spacing: 8
        )
      ],
      spacing: 12,
      content: {
        ForEach(0..<12) { _ in
          Rectangle().frame(width: 300)
        }
    })
      .frame(height: 300)
  }
}

struct LazyGridsView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      LazyVGridView()
        .previewLayout(.sizeThatFits)
      LazyHGridView()
        .previewLayout(.sizeThatFits)
    }
  }
}
