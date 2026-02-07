//
//  CardListView.swift
//  BLUESCAN
//
//  Created by ALAN JAFFRÉ on 28/06/2024.
// ALAN's EXTRACTION DE VIEW - not a main page

import SwiftUI

struct MyCardListView: View {
    var history: History
//    var image : String
//    var title : String
//    var description : String
//    var descriptiontext : String
//    var ingredients : String
//    var ingredientstext : String
//    @State var addFavorite : Bool
    
    
    var body: some View {
        ZStack{
            
            VStack{
                RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .frame(width: 370, height: 202)
                        .shadow(color: .black, radius: 4)
                        .overlay {
                            HStack{
                                Image(history.image)
                                    .resizable()
                                    .frame(width: 100 , height: 80)
                                
                           
                                VStack(alignment:.leading){
                                    ZStack {
                                        VStack(alignment:.leading){
                                            HStack {
                                                Text(history.title)
                                                    .font(.title3)
                                                    .foregroundColor(.customOrange)
                                                    .bold()
                                                
                                                if history.addFavorite {
                                                    Image(systemName: "heart.fill")
                                                       
                                                } else {
                                                    Image(systemName: "heart")
                                                        .padding ()
                                                        .foregroundColor(.red)
                                                        .scaleEffect(2)
                                                }
                                            }
                                            Text(history.description)
                                                .foregroundColor(.customBleu)
                                                .bold()
                                            Text(history.dlist)
                                                .foregroundColor(.customBleu)
                                            Text(history.ingretients)
                                                .foregroundColor(.customBleu)
                                                .bold()
                                            Text(history.ilist)
                                                .foregroundColor(.customBleu)
                                            
                                        }
            
                                    }
                                    
                                }
                                Spacer()
                                
                             
                            }
                                
                            }
                            
                        
                
                
            }
        }
    }
}
       
        
        
  #Preview {
      MyCardListView(history:products[0])
    }
                            
