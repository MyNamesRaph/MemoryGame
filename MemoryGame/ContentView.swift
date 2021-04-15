//
//  ContentView.swift
//  MemoryGame
//
//  Created by Informatique 21 on 2021-04-15.
//

import SwiftUI

struct ContentView: View {
  
  let cardAmount = 20
  
  var colNum = 4
  var columns: [GridItem] = []
  
  init() {
    for _ in 1...colNum {
      columns.append(GridItem(.flexible()))
    }
    
    
    
  }
    var body: some View {
      VStack{
        LazyVGrid(columns: columns, spacing: 20) {
          ForEach(1...cardAmount, id: \.self) {
            Rectangle().scaledToFit().id($0)
          }
          
        }
        
        Spacer()
      }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
