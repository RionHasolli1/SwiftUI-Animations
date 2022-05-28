//
//  OpenClose Animation.swift
//  MyAnimations
//
//  Created by Rion on 28.5.22.
//

import SwiftUI

struct OpenClose_Animation: View {
    @State private var isAnim = false
    
    var body: some View{
        
        VStack(alignment: .leading){
            
            
            Rectangle()
                .frame(width : isAnim ? 29 : 30,height: 2)
                .rotationEffect(.degrees(isAnim ? 45 : 0))
            Rectangle()
            
                .frame(width:50,height: 2)
                .rotationEffect(.degrees(isAnim ? -45 : 0))
            
            Rectangle()
                .frame(width : 30,height: 2)
                .rotationEffect(.degrees(isAnim ? 45 : 0))
                .padding(.leading,isAnim ? 19 : 0)
            
        
            Button("Click"){
                
                withAnimation(.easeIn){
                    
                    isAnim.toggle()
                }
            
                
            }
      
            .padding(.top,50)
        
  
     
        }
    

    }
    
}

struct OpenClose_Animation_Previews: PreviewProvider {
    static var previews: some View {
        OpenClose_Animation()
    }
}
