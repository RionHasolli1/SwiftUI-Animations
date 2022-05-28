//
//  ContentView.swift
//  MyAnimations
//
//  Created by Rion on 28.5.22.
//

import SwiftUI

struct CircleAnimations: View {
    
    @State var moveDown: Bool = false

    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    
                    ForEach(0...5, id: \.self) { index in
                        
                        Circle()
                            .size(width: 30, height: 30)
                            .foregroundColor(.blue)
                            .offset(x:0,y : self.moveDown ? 350 : 60)
                            .animation(
                             Animation.interpolatingSpring(stiffness: 100, damping: 10)
                                .delay(Double(index) * 0.1)
                                .speed(0.5))
                                   
                          
                       //     .animation(  Animation.spring(dampingFraction: 0.5))
                        
                        

                }
          
                }
               
      
                    Button(action: {
                        self.moveDown.toggle()
                    }, label: {
                        Text("Kliko")
                            
                    })
                   
                        
                
        
                
            
                
            .navigationBarTitle("Animations")
            .navigationBarTitleDisplayMode(.inline)
        }
                
           
        
        
    }
}


}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       CircleAnimations()
    }
}
