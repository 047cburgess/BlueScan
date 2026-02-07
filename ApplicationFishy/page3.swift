//
//  page3.swift
//  My new project
//
//  Created by apprenant179 on 20/06/2024.
//

// CASEY - NEED TO GET THE IMAGES FROM SELVA / ALAIN

import SwiftUI
struct History:Identifiable {
    
    var id = UUID()
    var title:String
    var description:String
    var dlist:String
    var ingretients:String
    var ilist:String
    var image:String
    var chooser:String
    @State var addFavorite : Bool
    
}

var products = [
    History(title:"Sardines - Altanta",description: "Description:",dlist: "Sardines à l’huile \r végétale - 125 g" , ingretients: "Ingredients:", ilist:"Sardines, huile végétale,\rsel",image: "SardinesAtlanta",chooser:"correct", addFavorite:false),
    History(title:"Maquereaux - Le Phare d’Eckmul",description: "Description:",dlist: "Thon nature - 160 g" , ingretients: "Ingredients:" ,ilist: "huile vegetable,poisson",image: "sardinesMaquereaux",chooser:"wrong", addFavorite: false),
    History(title:"Sardines- Parmentier",description: "Description:" ,dlist: "Sardines à l’huile \r de tournesol - 135 g", ingretients: "Ingredients:" , ilist: "huile vegetable,poisson",image: "sardinesParmentier",chooser:"correct", addFavorite: false),
    History(title:"Thon albacore - Petit Navire",description: "Description:",dlist: "Thon nature - 160 g" , ingretients: "Ingredients:" , ilist:"Thon, eau, sel",image: "thonPetitNavire",chooser:"correct", addFavorite: false),
     //TO DELETE - duplication //
    History(title:"Sardines tournesol",description: "Description:" ,dlist: "Sardines à l’huile \r de tournesol - 150 g", ingretients: "Ingredients:" ,ilist: "Huile,Tourne",image: "products6",chooser:"correct", addFavorite: false),
    //to add image //
    History(title:"Boni thon au naturel",description: "Description:",dlist: "Boni-400 g" , ingretients: "Ingredients:" ,ilist:"Poisson naturen,sel.",image: "products7",chooser:"correct", addFavorite: false),
]

struct page3: View {
    
    @State private var viewselected:String = "Favoris"
    
    

    
    var body: some View {
        
       
        
        
        NavigationStack {
            
            ZStack{
                
//                Image("formes")
//                    .offset(x: 0, y:-420)
                // Added background extraction de vue donc pareil pour tous
                Background()
                
                VStack(alignment:.center){
                    Spacer()
                    
                    // Page title
                    Text("hi")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.custom("Poppins-Bold", size: 30))
                        .foregroundStyle(.customBleu)
                        .padding(.leading, 40)
                    
                    // Picker
                    VStack{
                        HStack{
                            Spacer()
                            
                            Picker(selection: $viewselected, label: Text("Picker")) {
                                Text("Favoris").tag("Favoris")
                                Text("Historique").tag("Historique")
                            }
                            .padding(.bottom)
                            .padding(.top)
                            .pickerStyle(.segmented)
                            .frame(width:300,height:30)
                            Spacer()
                        }
                    }
                    
                    // Page content
                    if viewselected == "Historique" {
                        ScrollView{
                            ForEach (products)  { product in
                                //change to selva's card view and link the details
                               MyCardListView(history: product)
                                                        }
                        }
                    }
                    else {
                     Mes_Scans() // Alan's extraction de view
                       

                        
                    }
                    
               //fin
                }
            }
        }
    }
}

#Preview {
    page3()
}
