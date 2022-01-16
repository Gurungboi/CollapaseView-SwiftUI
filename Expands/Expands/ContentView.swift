//
//  ContentView.swift
//  Expands
//
//  Created by Sunil on 16/1/22.
//

import SwiftUI

struct ContentView: View {
    let data = MockData.getData()

    var body: some View {
        VStack(spacing: 8) {
            CollapaseView(
                title: { Text(self.data.title) },
                content: {
                    HStack {
                        Text(self.data.message)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                }
            )
            .frame(maxWidth: .infinity)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
