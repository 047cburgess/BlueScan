//
//  CardListView.swift
//  BLUESCAN
//
//  Created by ALAN JAFFRÉ on 28/06/2024.
//

import SwiftUI

struct MyCardListView: View {
   
    //Mycardlistview is for  favorites section elements.we create this structure of a single card to use in for each in Mes Scans
    
    @State var history: History
    
    
    var body: some View {
        ZStack{
            VStack{
                //card body for overlay all the elemnts 
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(width: 370, height: 202)
                    .shadow(color: .black, radius: 4)
                    .overlay {
                        HStack{
                            //card image
                            Image(history.image)
                                .resizable()
                                .frame(width: 100 , height: 80)
                            
                            
                            VStack(alignment:.leading){
                                ZStack {
                                    VStack(alignment:.leading){
                                        //card title
                                        HStack {
                                            Text(history.title)
                                                .font(.title3)
                                                .foregroundColor(.customOrange)
                                                .bold()
                                            
                                            Spacer()
                                            //favorite button condition
                                            Button {
                                                
                                            history.addFavorite = !history.addFavorite
                                                
                                            } label: {
                                                Image(systemName: history.addFavorite ? "heart.fill" : "heart")
                                                    .padding(.trailing, 3)
                                                    .foregroundColor(.red)
                                                    .scaleEffect(2)
                                                    .padding(.leading)
                                            }
                                            .offset(x: -30, y: 65)
                                            //end of condition
                                        }
                                        //Card contents
                                        Text(history.description)
                                            .foregroundColor(.customBleu)
                                            .bold()
                                        Text(history.dlist)
                                            .foregroundColor(.customBleu)
                                        Text(history.ingredients)
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
    MyCardListView(history: History(title:"Sardines - Altanta",description: "Description:",dlist: "Sardines à l’huile \r végétale - 125 g" , ingredients: "Ingredients:", ilist:"Sardines, huile végétale,\rsel",image: "SardinesAtlanta",chooser:"correct", addFavorite:false))
}

