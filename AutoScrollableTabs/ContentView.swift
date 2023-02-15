//
//  ContentView.swift
//  AutoScrollableTabs
//
//  Created by Tuğberk Can Özen on 15.02.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Home()
        }.preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
