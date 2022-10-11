//
//  ContentView.swift
//  destiny
//
//  Created by Quantum on 27/9/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    private var days = ["วันอาทิตย์", "วันจันทร์", "วันอังคาร", "วันพุธร", "วันพฤหัส", "วันศุกร์", "วันเสาร์"]
    
    private var mode = ["พลังบวก","การงาน", "การเงิน", "ความรัก", "สุขภาพ", "การะกีนี"]
    
    var body: some View {
        ScrollView{
            ForEach(days, id: \.self){ day in
                VStack{
                    
                Text(day)
                        .font(.largeTitle .bold())
                        .fontWeight(.heavy)
                        
                
                    ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                ForEach(mode, id: \.self){ mode in
                                    VStack{
                                        Text(mode)
                                            .font(.title)
                                        Image("sunday")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 120, height: 160)
                                            .background(.red)
                                            
                                    }
                                    
                                    .padding(0)
                                    
                                }
                              
                            }
                            
                    }
                    .background(.purple)
                }
                .background(.blue)
            }
            .background(.green)
            
        }
        .background(.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
