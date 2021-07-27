//
//  NegativeSolutions.swift
//  MoodTrack
//
//  Created by Mohamed Ismail on 25/07/2021.
//

import SwiftUI

struct NegativeSolutions: View {
    @State private var username: String = ""
    var body: some View {
        ZStack(){
            Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255)
                .ignoresSafeArea()
        VStack(){
            Text("Lets create some Solutions")
                .offset(y: -125)
                .foregroundColor( Color(red: 32 / 255, green: 32 / 255, blue: 32 / 255))
            TextField("Solution", text: $username) // <1>, <2>
                .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(y:-75)
                .foregroundColor( Color(red: 32 / 255, green: 32 / 255, blue: 32 / 255))
            
            NavigationLink(destination:ContentView()){
                Image("nextred")
                    .offset(y:125)
            }
        }
}
    }

struct NegativeSolutions_Previews: PreviewProvider {
    static var previews: some View {
        NegativeSolutions()
    }
}
    
}
