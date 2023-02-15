//
//  Home.swift
//  AutoScrollableTabs
//
//  Created by Tuğberk Can Özen on 15.02.2023.
//

import SwiftUI

struct Home: View {
    
    var body: some View {
        // For AutoScrolling Content's
        ScrollViewReader { proxy in
            ScrollView(.vertical, showsIndicators: false) {
                
                LazyVStack(spacing: 15, pinnedViews: [.sectionHeaders]) {
                    Section {
                       
                    } header: {
                        scrollableTabs()
                    }
                }
            }
        }.navigationTitle("Apple Store")
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarBackground(Color(.link), for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
    }
    
    // Scrollable Tabs
    @ViewBuilder
    func scrollableTabs() -> some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack(spacing: 10) {
                ForEach(ProductType.allCases, id: \.rawValue) { type in
                    Text(type.rawValue)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 15)
                }
            }.padding(.vertical, 15)
        }
        .background{
            Rectangle().fill(Color(.link))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}
