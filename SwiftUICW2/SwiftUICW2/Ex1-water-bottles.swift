//
//  ContentView.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw
import SwiftUI

struct Exercise1: View {
    @State var message = ""
    @State var WaterAmount = 0
    var body: some View {
        ZStack {
            Image("charter")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("عهدة الماء 🚰")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .font(.custom("Lateef-Regular.ttf", size: 25))
                
                VStack {
                    TextField("اكتب اسمك هنا ",text: $message)
                        .multilineTextAlignment(.center)
                        .disableAutocorrection(true)
                        .font(.custom("Lateef-Regular.ttf", size: 25))
                    
                }
                Stepper("كم بطلا من الماء ريد ان تتعهد بأن تشرب؟", value: $WaterAmount, in: 0...120)
                    .font(.custom("Lateef-Regular.ttf", size: 25))
                
                Spacer()
            }
                Text("اتعهد انا \(message), أن أشرب \(WaterAmount) من أكواب الماء يومياً")
                    .font(.custom("Lateef-Regular.ttf", size: 25))
                    
            
           
                    .onAppear(perform: {
                        playSound(sound: "HarryPotterThemeSong", type: "mp3")
                    })
            
                
              
                }
        }
    }


struct Exercise1_Previews: PreviewProvider {
    static var previews: some View {
        Exercise1()
        
    }
}


