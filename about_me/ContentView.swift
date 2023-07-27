//
//  ContentView.swift
//  about_me
//
//  Created by Scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAlert = false
    var body: some View {
        ScrollView{
            ZStack{
                Color("pastel_green")
                    .ignoresSafeArea()
                VStack(spacing:10){
                    
                    Image("soccer")
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0), resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0)
                    
                    
                    
                    Text("Rebecca Xiong")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("dark_blue"))
                    
                    Image("beach_bunny")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                 
                        
                    Image("rose_lavelle").resizable(resizingMode:.stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    Spacer()
                    
                    Button("Learn More"){
                        showAlert = true
                    }
                    .padding(.all, 10.0)
                    .cornerRadius(15)
                    .border(.blue, width: 1)
                
                    HStack{
                        Button(action:{openLink()}){
                            Image("instagram")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 90.0)
                            }
                    }
                }
                
                .padding()
                .alert("Facts About Me", isPresented : $showAlert, actions: {
                    Button("Finished"){}},
                       message:{
                    Text("1. I like to play soccer\n2. I am on level 5140 of Candy Crush\n3. I have gotten tendonitis on my right and left foot\n4. I am from New Jersey\n5. I love to go to concerts")
                    
                }
                )
            }
        }
        }
    
}

func openLink(){
    if let url = URL(string: "https://www.instagram.com/_rebeccaxiong_/") {
                UIApplication.shared.open(url)
            }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
