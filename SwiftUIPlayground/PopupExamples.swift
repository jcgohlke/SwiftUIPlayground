//
//  PopupExamples.swift
//  SwiftUIPlayground
//
//  Created by Joben Gohlke on 9/22/21.
//

import SwiftUI

struct PopupExamples: View {
  @State private var isLoaderPresented = false
  @State private var isTopSnackbarPresented = false
  
  var body: some View {
    TabView {
      leftTab
      rightTab
    }
    .popup(
      isPresented: isTopSnackbarPresented,
      alignment: .top,
      direction: .top,
      content: Snackbar.init
    )
    .popup(
      isPresented: isLoaderPresented,
      content: Loader.init
    )
  }
  
  private var leftTab: some View {
    VStack {
      Button(
        action: { self.isLoaderPresented.toggle() },
        label: { Text(isLoaderPresented ? "Hide Loader" : "Show Loader") }
      )
      
      Spacer()
    }
    .foregroundColor(.black)
    .tabItem {
      Label("Bottom", systemImage: "arrow.up")
    }
  }
  
  private var rightTab: some View {
    VStack {
      Button(action: { self.isTopSnackbarPresented.toggle() },
             label: { Text(isTopSnackbarPresented ? "Hide Alert" : "Show Alert") }
      )
    }
    .foregroundColor(.black)
    .tabItem {
      Label("Top", systemImage: "arrow.down")
    }
  }
}

struct Snackbar: View {
  var body: some View {
    HStack {
      Image(systemName: "person.fill")
        .resizable()
        .aspectRatio(contentMode: ContentMode.fill)
        .frame(width: 40, height: 40)
      
      VStack(alignment: .leading, spacing: 4) {
        Text("Archi")
          .foregroundColor(.black)
          .font(.headline)
        
        Text("Gotcha, let's meet at 9am")
          .font(.body)
          .foregroundColor(.black)
      }
    }
    .padding(15)
    .frame(maxWidth: .infinity, idealHeight: 100)
    .background(Color.black.opacity(0.1))
  }
}

struct Loader: View {
  var body: some View {
    Group {
      ProgressView()
        .progressViewStyle(.circular)
    }
    .padding()
    .background(Color.black.opacity(0.1))
    .cornerRadius(10)
  }
}

struct DarkBlueShadowProgressViewStyle: ProgressViewStyle {
  func makeBody(configuration: Configuration) -> some View {
    ProgressView(configuration)
      .shadow(color: Color(red: 0, green: 0, blue: 0.6),
              radius: 4.0, x: 1.0, y: 2.0)
  }
}

struct PopupExamples_Previews: PreviewProvider {
  static var previews: some View {
    PopupExamples()
  }
}
