//
//  SettingsMenuView.swift
//  SwiftUIPlayground
//
//  Created by Joben Gohlke on 8/19/21.
//

import SwiftUI

struct SettingsMenuView: View {
  @Feature(\.isDebugMenuEnabled) var showDebugMenu
  
  var body: some View {
    NavigationView {
      Form {
        if showDebugMenu {
          NavigationLink(destination: DebugSettings()) {
            Text("Debug Settings")
          }
        }
      }
    }
  }
}

struct DebugSettings: View {
  var body: some View {
    Text("Debug Settings Menu")
  }
}

struct SettingsMenuView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsMenuView()
  }
}

public class Features: ObservableObject {
  public static let shared = Features()
  private init() {}
  
  @Published public var isDebugMenuEnabled = true
}

@propertyWrapper
public struct Feature<T>: DynamicProperty {
  @ObservedObject private var features: Features
  
  private let keyPath: KeyPath<Features, T>
  
  public init(_ keyPath: KeyPath<Features, T>, features: Features = .shared) {
    self.keyPath = keyPath
    self.features = features
  }
  
  public var wrappedValue: T {
    return features[keyPath: keyPath]
  }
}
