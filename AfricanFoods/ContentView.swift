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
                    
                Section { //Social Media
                    
                    VStack {
                        Spacer()
                        
                        HStack {
                            Spacer()
                                Image("facebook")
                                    .resizable()
                                    .frame(width:40, height: 40)
                                    .scaledToFit()
                                    .padding()
                            
                                Image("instergram")
                                .resizable()
                                .frame(width:40, height: 40)
                                .scaledToFit()
                                .padding()
                            
                                
                                Image("youtube")
                                        .resizable()
                                        .frame(width:40, height: 40)
                                        .scaledToFit()
                                        .padding()
                            
                            
                                Image("twitter")
                                        .resizable()
                                        .frame(width:40, height: 40)
                                        .scaledToFit()
                                        .padding(.horizontal, 50)
                         
                        }
                      
                    
                    } //Vstack End
                    
                    
                } //Social Media
                    
               
                     
                        
                    
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
            
            Section(header: Text("Select Meal").padding(.horizontal, 25)) {
                
                Picker("Select Item", selection: $menuItem) {
                             ForEach(0 ..< menuItems.count) {
                                 Text(self.menuItems[$0])
        
                                
                                 
                             }
                         }.pickerStyle(SegmentedPickerStyle())
                          .padding(.horizontal, 25)
                    
                         
                         
               
                         if menuItems[menuItem] == "Rice Meals" {
                             Text("Rice Meals:")
                                .foregroundColor(.black)
                                .padding(.horizontal, 25)
                            
                            Spacer().frame(height:20)
                                Text("Rice meals consist of Jollof Rice, Rice and Stew, Fried Rice. You can option in meat, fish and or plantain with any of the meals")
                                .foregroundColor(.blue)
                                .lineLimit(nil)
                                .padding(.horizontal, 25)
                                
                            Spacer().frame(height:60)
                            
                                //Insert image - Jollof Rice
                                Image("jollofRice")
                                    .resizable()
                                    .frame(width:250, height: 250)
                                    .scaledToFit()
                                    .border(Color.black, width: 4)
                                    .padding(.horizontal, 100)
                            
                            
                            Section { //Button Order
                                
                                VStack {
                                    Spacer()
                                    
                                    HStack(alignment: .center, spacing: 140) {
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
                            
                                
                                
                
                             
                         } else if menuItems[menuItem] == "Swallow Meals" {
                             Text("Swallow")
                                .foregroundColor(.green)
                                .padding(.horizontal, 25)
                            
                            Spacer().frame(height:20)
                                Text("Swallow is the colloqual word for Pounded Yam, Eba, Fufu or Amala. This is complemented with soups, such as Egusi, Okra etc. You could have this meal with either meat or fish")
                                
                                    .foregroundColor(.blue)
                                    .lineLimit(nil)
                                    .padding(.horizontal, 25)
                                    
                            Spacer().frame(height:60)
                            
                                //Inset Image
                                Image("poundedYamEgusi")
                                    .resizable()
                                    .frame(width:250, height:250)
                                    .scaledToFit()
                                    .border(Color.black, width: 4)
                                    .padding(.horizontal, 100)
                            
                            
                            //Insert Order Button
                            Section {
                                
                                VStack {
                                    
                                    Spacer()
                                    
                                    HStack(alignment: .center, spacing: 140) {
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
                                    
                                } //VStack End
                                
                                
                            } //Section End
                            
                             
                             
                         } else if menuItems[menuItem] == "Pepper Soups" {
                             Text("Pepper Soup")
                                .foregroundColor(.red)
                                .padding(.horizontal, 25)
                            
                            Spacer().frame(height:20)
                                Text("Pepper soup is normally taken after one has had either Pounded Yam or rice meals. Depending on the audeience, the soup can be lightly spicy to very hot. Pepper soup can be had with either fish or meat")
                            
                                    .foregroundColor(.blue)
                                    .lineLimit(nil)
                                    .padding(.horizontal, 25)
                            
                            Spacer().frame(height:60)
                            
                            //Insert Image
                            Image("pepperSoupYam")
                                .resizable()
                                .frame(width:250, height:250)
                                .scaledToFit()
                                .border(Color.black, width: 4)
                                .padding(.horizontal, 100)
                            
                            
                            //Inset Order Button
                            Section {
                                
                                
                                
                                VStack {
                                    
                                    Spacer()
                                    
                                    HStack(alignment: .center, spacing: 140) {
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
                                    
                                }
                            }
                            
                         }
           
                     
                         Spacer()
                
                
            }.font(.system(size: 14))
             .foregroundColor(.purple)
    
    
            
            
         
        } //Vstack Ending
        
    
    } //View Ending
}

    

