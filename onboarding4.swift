//
//  Accueil .swift
//  Ramah Profil
//
//  Created by RAMAH on 03/07/2024.
//

import SwiftUI

struct Accueil_: View {
    var body: some View {
        VStack {
                    Image("Map")
                        .resizable()
                        .frame(width: 400, height: 600)
                        .padding(.bottom, 20)
                        
                    
                    Text("Partagez des points d'intérêt pour acheter et consommer de manière responsable")
                .font(.title)
                .multilineTextAlignment(.center)
                
                       
                }
            }
        }

#Preview {
    Accueil_()
}
