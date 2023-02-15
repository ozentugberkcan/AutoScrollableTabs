//
//  Home.swift
//  AutoScrollableTabs
//
//  Created by Tuğberk Can Özen on 15.02.2023.
//

import SwiftUI

struct Home: View {
    
    @State private var activeTab: ProductType = .iphone
    @Namespace private var animation
    
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
                    // Active Tab Indicator
                        .background(alignment: .bottom, content: {
                            if activeTab == type {
                                Capsule()
                                    .fill(.white)
                                    .frame(height: 5)
                                    .padding(.horizontal, -5)
                                    .offset(y: 15)
                                    .matchedGeometryEffect(id: "ACTIVETAB", in: animation)
                            }
                        })
                        .padding(.horizontal, 15)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                activeTab = type
                            }
                        }
                }
            }
            .padding(.vertical, 15)
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
