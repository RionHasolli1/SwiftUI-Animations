//
//  HeartAnimation.swift
//  MyAnimations
//
//  Created by Rion on 28.5.22.
//

import SwiftUI

struct HeartLoop : View{
    
    @State private var heartanimate = false
    
    var body : some View{
        
        
        ZStack(alignment: .center){
        Image(systemName: "heart.fill")
            .resizable()
            .frame(width: 200, height: 200, alignment: .center)
            .scaledToFit()
            .scaleEffect(heartanimate ? 1.5 : 0.5)
            
            .foregroundColor(.init(red: 0.26, green: 0.77, blue: 0.93))
            
        
        
        Spacer()
            
            Button("Preke Zemren tem"){
                
                
                withAnimation(.easeInOut(duration : 0.8).repeatForever(autoreverses: true)){
                    heartanimate.toggle()
                
                        
                }
                
    }
     
    
    }
}
}

struct HeartLoop_Previews: PreviewProvider {
    static var previews: some View {
        HeartLoop()
    }
}
