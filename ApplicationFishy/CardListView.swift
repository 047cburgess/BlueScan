//
//  CardListView.swift
//  My new project
//
//  Created by apprenant179 on 28/06/2024.
//

import SwiftUI

struct CardListView: View {
    
    //cardlistview is for  Historique section elements.we create this structure of a single card to use in for each in pages 3 (historique page)
    
   @State var history: History

    
    var body: some View{
        
    
        ZStack{
        //card body for overlay all the elemnts
            VStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(width: 370, height: 202)   //height width adjustments for rectangle
                    .shadow(color: .black, radius: 4)  //shadow effects
                    .overlay {    // overlay contents
                        VStack {
                            Spacer()
                            
                            HStack{
                                Image(history.chooser)     // checker image
                                    .padding(.leading, 30)
                                    .padding(.trailing, 30)
                                
                                Text(history.title)     //title
                                    .font(.title3)
                                    .foregroundColor(.customOrange)
                                    .bold()
                            Spacer()
                                
                            }
                            HStack{
                                Image(history.image)           // product image
                                    .resizable()
                                    .frame(width: 100 , height: 80)
                                VStack(alignment:.leading) {
                                    Text(history.description)       //product contents
                                        .foregroundColor(.customBleu)
                                        .bold()
                                    Text(history.dlist)
                                        .foregroundColor(.customBleu)
                                    Text(history.ingredients)
                                        .foregroundColor(.customBleu)
                                        .bold()
                                    Text(history.ilist)
                                        .foregroundColor(.customBleu)  
                                    // end of product contents
                                }.frame(width: 200, height: 80)    // height width adjustments
                                
                                Button {     // heart button condition
                                    history.addFavorite = !history.addFavorite
                                    
                                                            } label: {
                                                                Image(systemName: history.addFavorite ? "heart.fill" : "heart")
                                                                    .padding(.trailing, 18)
                                                                    .foregroundColor(.red)
                                                                    .scaleEffect(2) .frame(alignment: .trailing)
                                                                    .padding(.bottom)
                                                                    
                                                                                                                    }
                                // End of heart button
                            }
                            
                            VStack(alignment:.leading){
                                
                                ZStack {
                                    VStack(alignment:.leading){
                                    }
                                   
                                   
                                }
                               
                            }
                        Spacer() // spacer for move to center
                            
    
                            Spacer() // spacer for push up
                               
                               
                            }
                        
                    }
                   
            } .padding(.horizontal) // for clear the shadow bug in 
                .padding(.top)
            

        }
    }
}

#Preview {
    CardListView(history: products[0])
}
