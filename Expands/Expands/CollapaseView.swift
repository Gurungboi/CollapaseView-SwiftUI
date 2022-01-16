//
//  CollapaseView.swift
//  Expands
//
//  Created by Sunil on 17/1/22.
//

import SwiftUI

struct CollapaseView<Content: View>: View {
    @State var title: () -> Text
    @State var content: () -> Content
    
    @State private var collapsed: Bool = true
    
    var body: some View {
        VStack {
            Button(
                action: { self.collapsed.toggle() },
                label: {
                    HStack {
                        self.title()
                        Spacer()
                        Image(systemName: self.collapsed ? "chevron.down" : "chevron.up")
                    }
                    .padding(.bottom, 8)
                }
            )
            .buttonStyle(PlainButtonStyle())
            
            VStack {
                self.content()
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: collapsed ? 0 : .none)
            .clipped()
            .transition(.slide)
            .animation(.easeIn)
        }
    }
}
