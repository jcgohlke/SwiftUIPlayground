//
//  BlueTextField.swift
//  SwiftUIPlayground
//
//  Created by Joben Gohlke on 6/30/21.
//

import SwiftUI

struct BlueTextField: View {
  @State var firstName: String = ""
  
    var body: some View {
      VStack(alignment: .leading) {
        HStack {
          VStack(alignment: .leading) {
            Text("First Name")
              .font(.caption)
            TextField("First Name", text: $firstName)
          }
          
          Image(systemName: "checkmark")
            .foregroundColor(.green)
        }
      }
      .padding()
      .frame(maxWidth: .infinity, alignment: .center)
      .background(Color(white: 0.9, opacity: 1.0))
      .cornerRadius(8)
      .padding()
    }
}

struct BlueTextField_Previews: PreviewProvider {
    static var previews: some View {
        BlueTextField()
    }
}
