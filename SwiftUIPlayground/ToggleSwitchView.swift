//
//  ToggleSwitchView.swift
//  SwiftUIPlayground
//
//  Created by Joben Gohlke on 7/28/21.
//

import SwiftUI

struct ToggleSwitchView: View {
  
  @State var isSoundOn: Bool = false
  
  var body: some View {
    VStack(spacing: 40) {
      Toggle("Sound", isOn: $isSoundOn)
      
      Image(systemName: isSoundOn ? "speaker.1.fill" : "speaker.slash.fill")
        .font(.system(size: 56))
        .padding()
      
      Toggle("Sound", isOn: $isSoundOn).labelsHidden()
      
      VStack {
        Text("Toggle Sound")
          .foregroundColor(isSoundOn ? .green : .gray)
        Toggle("Sound", isOn: $isSoundOn)
          .labelsHidden()
      }.padding()
      .overlay(
        RoundedRectangle(cornerRadius: 15)
          .stroke(lineWidth: 2)
          .foregroundColor(isSoundOn ? .green : .gray)
      )
      
      Spacer()
    }
    .padding()
  }
}

struct ToggleSwitchView_Previews: PreviewProvider {
  static var previews: some View {
    ToggleSwitchView(isSoundOn: true)
      
  }
}
