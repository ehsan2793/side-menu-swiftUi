//
//  ContentView.swift
//  side menu
//
//  Created by Ehsan Rahimi on 3/23/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false

    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("start")
                }

                SideMenuView(isShowing: $showMenu)
            }
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: { showMenu.toggle() }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                }
            }
        } //: Navigation
    }
}

#Preview {
    ContentView()
}
