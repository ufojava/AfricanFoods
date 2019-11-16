//
//  ContentView.swift
//  AfricanFoods
//
//  Created by Ufuoma Okoro on 13/11/2019.
//  Copyright © 2019 Ufuoma Okoro. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
       
        
        VStack {
            NavigationView {
                
                
                Section {
                VStack(alignment: .leading) {
                    
                        
                    
                    NavigationLink(destination: MenuOption()) {
                        Text("Meal Options")
                    }
                    
                    
                            
                    Spacer()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                    
                    
                    
                    }.padding()
                    
                }
                
                
                Section {
                    
                    VStack {
                        
                        
                        Image("africanfoods")
                                           .resizable()
                                           .frame(width: 275.0, height: 250.0)
                                           .clipShape(Circle())
                                           .overlay(Circle().stroke(Color.black, lineWidth: 5))
                                           .scaledToFit()
                                       
                                   }
            
                    
                        
                    }
                    
                Section { //Button Order
                    
                    VStack {
                        Spacer()
                        
                        HStack(alignment: .center, spacing: 130) {
                            Spacer()
                            Button(action: {}) {
                                NavigationLink(destination: CreatOrderView()) {
                                    Text("Create Order")
                                        .font(.system(size: 14))
                                        .padding()
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(6)
                                    
                                }.padding()
                                Spacer()
                            
                            }
                        }
                      
                        
                    } //Vstack End
                    
                    
                } //Button Section End
                    
               
                     
                        
                    
                    .navigationBarTitle(Text("African Foods Center"))
                    
            }   //NavView End
        
           
    } //VStack End
    

        
    }


}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct MenuOption: View {
    
    @State private var menuItem = 0
    
    var menuItems = ["Rice Meals", "Swallow Meals", "Pepper Soups"]
    
    var body: some View {
    
        VStack(alignment: .leading) {
            
            Section(header: Text("Select Meal")) {
                
                Picker("Select Item", selection: $menuItem) {
                             ForEach(0 ..< menuItems.count) {
                                 Text(self.menuItems[$0])
                                 //Spacer()
                                 
                             }
                         }.pickerStyle(SegmentedPickerStyle())
                         
                         
                         if menuItems[menuItem] == "Rice Meals" {
                             Text("Selected Rice Meals")
                                .foregroundColor(.blue)
                             
                         } else if menuItems[menuItem] == "Swallow Meals" {
                             Text("Selected Swallow")
                                .foregroundColor(.green)
                             
                             
                         } else if menuItems[menuItem] == "Pepper Soups" {
                             Text("Pepper Soups Selected")
                                .foregroundColor(.red)
                         }
                         
                         Spacer()
                
                
            }.font(.system(size: 14))
             .foregroundColor(.green)
            
            
         
        } //Vstack Ending
        
    
    } //View Ending
}

    

