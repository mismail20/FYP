//
//  NegativeForm.swift
//  MoodTrack
//
//  Created by Mohamed Ismail on 25/07/2021.
//

import SwiftUI

struct PositiveForm: View {
    @State var sliderValueOne: Double = 0
    @State var sliderValueTwo: Double = 0
    @State var sliderValueThree: Double = 0
    
    let sliderOne = ["affectionate",
                     "compassionate",
                     "friendly",
                     "loving",
                     "open-hearted",
                     "sympathetic"]


    let sliderTwo = ["engaged",
                     "absorbed",
                     "alert",
                     "curious",
                     "engrossed",
                     "enchanted"]
    
    let sliderThree = ["confident",
                       "empowered",
                       "open",
                       "proud",
                       "safe",
                       "secure"]
    
    var body: some View {
        ZStack(){
            Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255)
                .ignoresSafeArea()
            VStack(){
                Text("Drag the bar to what describes your feelings")
                    .foregroundColor( Color(red: 32 / 255, green: 32 / 255, blue: 32 / 255))
                    .offset(y: -60)
                
                Slider(value: $sliderValueOne, in: 0...5, step: 1)
                    .frame(width: 300,  alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("Current slider value: \(sliderOne[Int(sliderValueOne)])")
                    .foregroundColor( Color(red: 32 / 255, green: 32 / 255, blue: 32 / 255))
                        .padding()
                
                Slider(value: $sliderValueTwo, in: 0...5, step: 1)
                    .frame(width: 300,  alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("Current slider value: \(sliderTwo[Int(sliderValueTwo)])")
                    .foregroundColor( Color(red: 32 / 255, green: 32 / 255, blue: 32 / 255))
                        .padding()
                
                Slider(value: $sliderValueThree, in: 0...5, step: 1)
                    .frame(width: 300,  alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("Current slider value: \(sliderThree[Int(sliderValueThree)])")
                    .foregroundColor( Color(red: 32 / 255, green: 32 / 255, blue: 32 / 255))
                        .padding()
        
                NavigationLink(destination:PositiveSolutions()){
                    Image("nextblue")
                        .offset(y: 20)
                }
            }
        
    }
    }
    }


struct PositiveForm_Previews: PreviewProvider {
    static var previews: some View {
        PositiveForm()
    }
}
