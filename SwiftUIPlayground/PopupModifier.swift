//
//  Popup.swift
//  SwiftUIPlayground
//
//  Created by Joben Gohlke on 9/22/21.
//

import SwiftUI

struct Popup<T: View>: ViewModifier {
  let popup: T
  let isPresented: Bool
  let alignment: Alignment
  let direction: Direction
  
  init(isPresented: Bool, alignment: Alignment, direction: Direction, @ViewBuilder content: () -> T) {
    self.isPresented = isPresented
    self.alignment = alignment
    self.direction = direction
    popup = content()
  }
  
  func body(content: Content) -> some View {
    content
      .overlay(popupContent())
  }
  
  @ViewBuilder private func popupContent() -> some View {
    GeometryReader { geometry in
      if isPresented {
        popup
          .animation(.spring())
          .transition(.offset(x: 0, y: direction.offset(popupFrame: geometry.frame(in: .global))))
          .frame(width: geometry.size.width, height: geometry.size.height, alignment: alignment)
      }
    }
  }
}

extension Popup {
  enum Direction {
    case top, bottom
    
    func offset(popupFrame: CGRect) -> CGFloat {
      switch self {
        case .top:
          let aboveScreenEdge = -popupFrame.maxY
          return aboveScreenEdge
        case .bottom:
          let belowScreenEdge = UIScreen.main.bounds.height - popupFrame.minY
          return belowScreenEdge
      }
    }
  }
}

extension View {
  func popup<T: View>(
    isPresented: Bool,
    alignment: Alignment = .center,
    direction: Popup<T>.Direction = .bottom,
    @ViewBuilder content: () -> T
  ) -> some View {
    return modifier(
      Popup(
        isPresented: isPresented,
        alignment: alignment,
        direction: direction,
        content: content
      )
    )
  }
}

struct Popup1_Previews: PreviewProvider {
  
  static var previews: some View {
    Preview()
  }
  
  struct Preview: View {
    @State var isPresented = false
    
    var body: some View {
      ZStack {
        Color.clear
        VStack {
          Button("Toggle", action: { isPresented.toggle() })
          Spacer()
        }
      }
      .modifier(
        Popup(
          isPresented: isPresented,
          alignment: .center,
          direction: .top,
          content: { Color.red.frame(width: 100, height: 100) }
        )
      )
    }
  }
}
