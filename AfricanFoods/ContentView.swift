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
                    
                    
                    
                            
                    Text("Meal Description").foregroundColor(.green)
                    Spacer()
                               
                            NavigationLink(destination: PoundedYam()) {
                                Text("Pounded Yam & Egusi Soup")
                    }
                    
                            NavigationLink(destination: YamPepSoup()) {
                                Text("Yam and Pepper Soup")
                            }
                    
                    
                        NavigationLink(destination: JollofRice()) {
                                Text("Jollof Rice & Plantain")
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
                    
               
                     
                        
                    
                    .navigationBarTitle(Text("Menu"))
                    

                    
            
                    
            }   //NavView End
            
            
            
            
           /*
          
            //Button begin
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                
                
                
                NavigationLink(destination: CreatOrderView()) {
                    Text("Create Order")
                    
                }
            }
                
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(8)
            Spacer()
           */
            //Button Ends
          
        
            
        
            
                     
            
        
           
        } //VStack End
    
    
        
    
        
        
        

        
    }


}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct PoundedYam: View {
    
    var body: some View {
        
        Text("Page 1")
    }
    
}
    
struct YamPepSoup: View {
        
    var body: some View {
            
        Text("Page 2").fontWeight(.heavy)
        }
        
    }

struct JollofRice: View {
    
var body: some View {
        
    Text("Page 2").fontWeight(.heavy)
    }
    
}

    

