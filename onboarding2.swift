//
//  UNBOARDING.swift
//  BLUESCAN
//
//  Created by ALAN JAFFRÉ on 03/07/2024.
//

import SwiftUI

struct UNBOARDING: View {
    var body: some View {
        ZStack{
           Rectangle()
                .fill(.white)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("scanner")
                Text("Bienvenue")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                Text(" Scannez, identifiez et choisissez les produits issus de la pêche responsable.")
                    .padding(30)
                Spacer()
            }
            .padding(.bottom, 120)
        }
        
    }

}

#Preview {
    UNBOARDING()
}
