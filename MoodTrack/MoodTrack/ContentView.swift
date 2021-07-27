//
//  ContentView.swift
//  MoodTrack
//
//  Created by Mohamed Ismail on 23/07/2021.
//

//
//  ContentView.swift
//  MoodTracker
//
//  Created by Mohamed Ismail on 23/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack(){
                Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255)
                    .ignoresSafeArea()
                VStack(){
                Text("How are you feeling today?")
                    .foregroundColor( Color(red: 32 / 255, green: 32 / 255, blue: 32 / 255))
                    .offset(y: -60)
                    
                NavigationLink(destination:PositiveForm()){
                    Image("posit")
                }
                NavigationLink(destination:NegativeForm()){
                    Image("negative")
                        .offset(y:-25)
                
                }
            }
        }
    }
    }
                    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
}
