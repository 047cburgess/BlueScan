//
//  On boarding 1.swift
//  My new project
//
//  Created by apprenant179 on 03/07/2024.
//

import SwiftUI

struct On_boarding_1: View {
    
    var body: some View {
        ZStack{
           Rectangle()
                .fill(.white)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("Logo")
                Text("Bienvenue")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                Text("Découvrez Blue Scan, l'application qui facilite la consommation de produits de la mer durables.")
                    .padding(30)
                Spacer()
            }
            .padding(.bottom, 120)
        }
        
    }
}

#Preview {
    On_boarding_1()
}
