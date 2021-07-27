//
//  NegativeForm.swift
//  MoodTrack
//
//  Created by Mohamed Ismail on 25/07/2021.
//

import SwiftUI

struct NegativeForm: View {
    @State var sliderValueOne: Double = 0
    @State var sliderValueTwo: Double = 0
    @State var sliderValueThree: Double = 0
    
    let sliderOne = ["afraid",
                     "apprehensive",
                     "dread",
                     "foreboding",
                     "frightened",
                     "mistrustful"]
    
    let sliderTwo = ["annoyed",
                     "aggravated",
                     "dismayed",
                     "disgruntled",
                     "displeased",
                     "exasperated"]
    
    let sliderThree = ["angry",
                       "enraged",
                       "furious",
                       "incensed",
                       "indignant",
                       "irate",]
    
    var body: some View {
        ZStack(){
            Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255)
                .ignoresSafeArea()
            VStack(){
                Text("Drag the bar to what describes your feelings")
                    .offset(y: -60)
                    .foregroundColor( Color(red: 32 / 255, green: 32 / 255, blue: 32 / 255))
                
                Slider(value: $sliderValueOne, in: 0...5, step: 1)
                    .frame(width: 300,  alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("Current slider value: \(sliderOne[Int(sliderValueOne)])")
                        .padding()
                    .foregroundColor( Color(red: 32 / 255, green: 32 / 255, blue: 32 / 255))
                
                Slider(value: $sliderValueTwo, in: 0...5, step: 1)
                    .frame(width: 300,  alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("Current slider value: \(sliderTwo[Int(sliderValueTwo)])")
                        .padding()
                    .foregroundColor( Color(red: 32 / 255, green: 32 / 255, blue: 32 / 255))
                
                Slider(value: $sliderValueThree, in: 0...5, step: 1)
                    .frame(width: 300,  alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("Current slider value: \(sliderThree[Int(sliderValueThree)])")
                        .padding()
                    .foregroundColor( Color(red: 32 / 255, green: 32 / 255, blue: 32 / 255))
        
                NavigationLink(destination:NegativeSolutions()){
                    Image("nextred")
                        .offset(y: 20)
                }
            }
        
    }
    }
}


struct NegativeForm_Previews: PreviewProvider {
    static var previews: some View {
        NegativeForm()
    }
}
