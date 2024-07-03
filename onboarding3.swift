//
//  on boarding 3.swift
//  My new project
//
//  Created by apprenant179 on 03/07/2024.
//

import SwiftUI

struct on_boarding_3: View {
    var body: some View {
        ZStack{
           Rectangle()
                .fill(.white)
                .ignoresSafeArea()
            VStack{
                
                VStack{
                   Spacer()
                    HStack{
                       
                        Spacer()
                        Image("food 3")
                            .resizable()
                            .frame(width: 160, height: 160)
                            .cornerRadius(10)
                        Spacer()
                        Image("food 2")
                            .resizable()
                            .frame(width: 160, height: 160)
                        Spacer()
                    }
                   
                    HStack{
                        Spacer()
                        Image("food 4")
                            .resizable()
                            .frame(width: 160, height: 160)
                        Spacer()
                        Image("food 3")
                            .resizable()
                            .frame(width: 160, height: 160)
                        Spacer()
                    }
                }
                .padding()
                
                Text("Découvrez nos recettes ")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
              
                Spacer()
            }
            .padding(.bottom, 120)
        }
        
    }
}

#Preview {
    on_boarding_3()
}
