//
//  CheckDownload Animation.swift
//  MyAnimations
//
//  Created by Rion on 28.5.22.
//

import SwiftUI

struct CheckDownLoadAnimation: View {
    
    @State private var isAnimating = false
    var body: some View {
      
        ZStack{
            
            
            Circle()
                .trim(to: isAnimating ? 1 : 0)
                .stroke(.blue,lineWidth: 3)
                .frame(width:100,height: 100)
                .animation(.easeInOut(duration : 1), value: isAnimating)
       
            
            Image(systemName: "checkmark")
                .foregroundColor(.blue)
                .scaleEffect(isAnimating ? 1.5 : 0)
                .font(.largeTitle)
            
            
            Button(action: {self.isAnimating.toggle()}) {
                Image(systemName: "line.horizontal.3")
                    .animation(.easeInOut)
                    .font(.title)
                    .foregroundColor(.blue)
                    
                
                  
            }
        
            
            .padding(.top,200)
        }
        
        
      
        
        
        
     //   .onAppear{
            
      //      isAnimating.toggle()
      //  }
    }
}
    
struct CheckDownload_Animation_Previews: PreviewProvider {
    static var previews: some View {
       CheckDownLoadAnimation()
    }
}
