//
//  RootNavigation.swift
//  My new project
//
//
//  Created by apprenant179 on 27/06/2024.
//

import SwiftUI

struct RootNavigation: View {
    var body: some View {
        TabView {
           
            page3()
                .tabItem {
                Label("Produits", systemImage: "leaf.fill")
                }
            Color.white
                .tabItem {
                Label("Produits", systemImage: "moon.fill")
                }
            Color.white
                .tabItem {
                Label("Produits", systemImage: "fish.fill")
                }
            Color.white
                .tabItem {
                Label("Produits", systemImage: "bird.fill")
                }
        }
    }
}

#Preview {
    RootNavigation()
}
