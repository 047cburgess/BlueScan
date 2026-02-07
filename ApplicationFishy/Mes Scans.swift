//
//  Mes Scans.swift
//  BLUESCAN
//
//  Created by ALAN JAFFRÉ on 25/06/2024.
// ALANS DATA

import SwiftUI



struct Mes_Scans: View {
    
    var favoris = [
        History(title:"Sardines - Altanta",description: "Description:",dlist: "Sardines à l’huile \r végétale - 125 g" , ingretients: "Ingredients:", ilist:"Sardines, huile végétale,\rsel",image: "SardinesAtlanta",chooser:"correct", addFavorite: false),
        
        History(title: "Sardine - Atlanta", description: "Description :", dlist: "Sardine à l'huile végétale- 125g", ingretients: "Ingrédients :",ilist: "Sardines huile végétale, sel",image: "products2",chooser:"correct", addFavorite: false),
        
        History(title: "Sardine - Parmentier", description: "Description :",dlist: "Sardine à l'huile de tournesol", ingretients: "Ingrédients :", ilist: "Sardines, huile de tournesol, sel",image: "sardinesParmentier",chooser:"correct", addFavorite: true),
        
        History(title: "Thon - Petit Navire", description: "Description :",dlist: "Thon nature - 160g", ingretients: "Ingrédients :", ilist: "Thon, eau, sel",image: "products3",chooser:"wrong", addFavorite: true),
    ]
    
    
    var body: some View {
        
        
        NavigationStack {
            
            ZStack{
                Image("formes")
                    .offset(x: 0, y:-420)
                
                VStack(alignment:.center){
                    
                    // PICKER BUTTON
                    
                    //                    HStack{
                    //                        Spacer()
                    //                        Picker(selection: .constant(1), label: Text("Picker")) {
                    //                            Text("Historique").tag(1)
                    //                            Text("Favoris").tag(2)
                    //                        }
                    //                        .pickerStyle(.segmented)
                    //                        .frame(width:300,height:30)
                    //                       Spacer()
                    //
                    //                    }
                    
                    // LISTE DES PRODUITS
                    ScrollView{
                        ForEach(favoris) { banana in
                            MyCardListView(history:banana)
                            
                        }
                    }
                }
            }
        }
    }
}




#Preview {
    Mes_Scans()
}






//struct FavorisView: View {
//    @State private var selectedValue = 1
//
//    var body: some View {
//        VStack {
//            Spacer()
//            Picker(selection: $selectedValue, label: Text("Picker")) {
//                Text("Historique").tag(1)
//                Text("Favoris").tag(2)
//            }
//            .pickerStyle(.segmented)
//            .frame(width:300,height:30)
//            Spacer()
//        }
//    }
//}
//
//
//





