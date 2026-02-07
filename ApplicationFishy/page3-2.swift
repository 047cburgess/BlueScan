//
//  page3.swift
//  My new project
//
//  Created by apprenant179 on 20/06/2024.
//

import SwiftUI
struct History: Identifiable {
    
    var id = UUID()
    var title:String
    var description:String
    var dlist:String
    var ingredients:String
    var ilist:String
    var image:String
    var chooser:String
    var addFavorite : Bool
    
}


// Array conatins all elements for historique and favoris
//dlist means description list
//ilist means ingredient list
//addfavorite for heart favorite button
//chooser for green checker and red face

// Historiques
var products = [
   History(title:"Sardines - Altanta",description: "Description:",dlist: "Sardines à l’huile \r végétale - 125 g" , ingredients: "Ingredients:", ilist:"Sardines, huile végétale,\rsel",image: "SardinesAtlanta",chooser:"correct", addFavorite:false),
   History(title:"Maquereaux - Le Phare d’Eckmul",description: "Description:",dlist: "Thon nature - 160 g" , ingredients: "Ingredients:" ,ilist: "huile vegetable,poisson",image: "sardinesMaquereaux",chooser:"wrong", addFavorite: false),
   History(title:"Sardines- Parmentier",description: "Description:" ,dlist: "Sardines à l’huile \r de tournesol - 135 g", ingredients: "Ingredients:" , ilist: "huile vegetable,poisson",image: "sardinesParmentier",chooser:"correct", addFavorite: true),
   History(title:"Thon albacore - Petit Navire",description: "Description:",dlist: "Thon nature - 160 g" , ingredients: "Ingredients:" , ilist:"Thon, eau, sel",image: "thonPetitNavire",chooser:"correct", addFavorite: false),
   
   History(title:"Sardines tournesol",description: "Description:" ,dlist: "Sardines à l’huile \r de tournesol - 150 g", ingredients: "Ingredients:" ,ilist: "Huile,Tourne",image: "sardinesTournesol",chooser:"correct", addFavorite: true),
  
   History(title:"Boni thon au naturel",description: "Description:",dlist: "Boni-400 g" , ingredients: "Ingredients:" ,ilist:"Poisson naturen,sel.",image: "boniThon",chooser:"correct", addFavorite: true),
]

struct Page3: View {
    
    @State private var allProducts = products
    @State private var ViewSelected:String = "Favoris"
    @State private var title: String = "Mes Scans"

    var body: some View {
        
        NavigationStack {
            
            ZStack{
                Background()
                
                VStack(alignment:.center){
                    PageTitle(title: $title)
                    Spacer()
                    VStack{
                        HStack{
                            Spacer()
                            //picker
                            Picker(selection: $ViewSelected, label: Text("Picker")) {
                                Text("Favoris").tag("Favoris")
                                Text("Historique").tag("historique")//picker end
                            }
                            .padding(.bottom)
                            .padding(.top)
                            .pickerStyle(.segmented)
                            .frame(width:200,height:30)
                            Spacer()
                        }
                    }
                    
                    //if else  condition for picker to navigate between historique and favoris
                    //hst short definition of history
                    if ViewSelected == "historique" {
                        ScrollView{
                            ForEach (allProducts)  { product in
                               CardListView(history: product)
                                                        }
                        }
                    }
                    else {
                        // Removed to be simpler to try figure out data sharing Mes_Scans()
                        ScrollView{
                            ForEach(allProducts) { banana in
                                if banana.addFavorite == true{
                                    MyCardListView(history: banana)
                                }
                                   
                            }
                                .padding()
                        }
                    }
                   
               //End of picker (if and else)
                }
                
            }
                
              
        }
    }
}

#Preview {
    Page3()
}
