//
//  Mes Scans.swift
//  BLUESCAN
//
//  Created by ALAN JAFFRÉ on 25/06/2024.
//

import SwiftUI

    
    
struct Mes_Scans: View {
    
    var body: some View {
        
      NavigationStack {
            
           
 
                VStack(alignment:.center){
            
                    ScrollView{
                        ForEach(products) { banana in
                            if banana.addFavorite == true{
                                MyCardListView(history:banana)
                            }
                               
                        }
                            .padding()
                    }
                }
                .navigationTitle("Mes scans")
       }
    }
}
    

        #Preview {
            Mes_Scans()
        }
        
        
        
        
        
        
    
        
        
        
        
    
