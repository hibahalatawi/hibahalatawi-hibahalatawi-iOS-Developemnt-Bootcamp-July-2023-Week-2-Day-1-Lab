//
//  ContentView.swift
//  Lap1Project
//
//  Created by Hibah Abdullah Alatawi on 12/01/1445 AH.
//

import SwiftUI

struct ContentView: View {
    let images : Array<String> = [
        "2","3","4","5"
    ]

    var body: some View {
        ZStack{
            Color.gray.opacity(0.3)
                .ignoresSafeArea()
            VStack {
                
                
                
                HStack(spacing: 15){
                    
                    Button(action: {
                        print("Add")
                    }) {
                        
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color.indigo)
                            .font(.system(size: 22))
                            .foregroundColor(.black)
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        print("Back")
                        
                    }) {
                        
                        Text("Add")
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 25)
                            .background(Color.indigo)
                            .cornerRadius(10)
                    }
                }
                .padding()
                HStack {
                    
                    Image("1")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(.indigo, lineWidth: 3)
                        }
                    
                    
                    VStack(alignment: .leading, spacing: 5){
                        
                        Text("Hibah Alatawi")
                            .font(.title)
                            .foregroundColor(Color.black.opacity(0.8))
                        
                        Text("iOS Developer")
                            .foregroundColor(Color.black.opacity(0.7))
                            .padding(.top, 8)
                        
                        Text("hebah.saif16@gmail.com")
                            .foregroundColor(Color.black.opacity(0.7))
                    }
                    .padding(.leading, 30)
                    Spacer(minLength: 0)
                }
                
                
                Text("Welcome To My Profile ")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color.indigo)
                    .frame(alignment: .leading)
                
                Text("My Photo")
                    .font(.title)
                
                    .bold()
                    .foregroundColor(Color(hue: 1.0, saturation: 0.703, brightness: 0.657))
                    .frame(maxWidth: 340, alignment: .leading)
                
                ScrollView (.vertical){
                    ForEach(images,id: \.self) {
                        i in
                        Image(i)
                            .resizable()
                            .scaledToFill()
                            .clipped()
                            .frame(width: .infinity, height: 200)
                            .cornerRadius(20)
                            .overlay {
                                Rectangle().stroke(.indigo.opacity(0.6), lineWidth: 3)
                            }
                    }
                    
                    
                }
                //.frame( height: .infinity)
                Spacer()
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
