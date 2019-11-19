//
//  ContentView.swift
//  AfricanFoods
//
//  Created by Ufuoma Okoro on 13/11/2019.
//  Copyright © 2019 Ufuoma Okoro. All rights reserved.
//

import SwiftUI
import Combine

class MealOrders: ObservableObject {
    
    //Jollof Rice - Published
    @Published var jollof = 0
    
    //Swallow - Published
    @Published var swallow = 0
    
    //Pepper Soup - Published
    @Published var pepperSoup = 0
    
    
}






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
    
    //Object Observed Declarations
    @ObservedObject var meals = MealOrders()
    
    //Meal Prices
    @State private var jolloRiceUnitCost = 14.95 //Jollof Rice Unit Cost
    
    @State private var swallowUnitCost = 12.50 //Swallow Unit Cost
    
    @State private var pepperSoupUnitCost = 13.50 //Pepper Soup Unit Cost
    
    @State private var deliveryCost = 5.99 //Delivery Cost
    
    
    @State private var menuItem = 0
    
    var menuItems = ["Rice Meals", "Swallow Meals", "Pepper Soups"]
    
    //Meals Calculator
    var calculateMeal: Double {
        
        var orderCost = 0.0
        
        //Jollof Rice
        if menuItems[menuItem] == "Rice Meals" {
             orderCost = self.jolloRiceUnitCost * Double(self.meals.jollof)
                return orderCost
            
        //Swallow - Pounded Yam / Eba
        } else if menuItems[menuItem] == "Swallow Meals" {
            orderCost = self.swallowUnitCost * Double(self.meals.swallow)
            
        } else if menuItems[menuItem] == "Pepper Soup" {
            orderCost = self.pepperSoupUnitCost * Double(self.meals.pepperSoup)
            
        }
        
            return orderCost
    }
    
    
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
                            
                            Spacer().frame(height:20)
                            
                            HStack {
                            Stepper("Quantity",value: $meals.jollof, in: 0...5)
                                .padding(.horizontal, 45)
                                Text("£\(calculateMeal, specifier: "%.2f")")
                                .padding()
                            
                            }.padding()
                            
                            
                            
                            Section { //Button Order
                                
                                VStack {
                                    Spacer()
                                    
                                    HStack(alignment: .center, spacing: 140) {
                                        Spacer()
                                        Button(action: {}) {
                                            NavigationLink(destination: NewOrders()) {
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
                                            
                                                NavigationLink(destination: NewOrders()) {
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
                                            
                                            NavigationLink(destination: NewOrders()) {
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


//This sis going to be the Orders Struct
struct NewOrders: View {
    
    var  body: some View {
    
        VStack {
            
            Text("Hello World New View")
        
        
            
        }
        
    }
    
}


    

