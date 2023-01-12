//
//  Colorsline1.swift
//  Snapcolor
//
//  Created by Shifa Alfaisal on 11/06/1444 AH.
//

import SwiftUI

struct Colorsline1: View {
    @State private var isPresented = false
    @State private var isPresented2 = false
    @State var moving = false
    @State var positionX = 0.0
    @State var positionY = 0.0
    @State private var heliPosition = CGPoint(x:10, y: 10)
    @State private var obstPosition = CGPoint(x:10, y: 40)
    @State private var move = false
    
    
    let timer = Timer.publish(every: 0.2, on: .main, in: .default).autoconnect()


    var body: some View {
        VStack{
            HStack{
                Text("Searches")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.494, green: 0.494, blue: 0.494))
                    .padding(.leading, 30.0)
                Spacer()
            }
            
            
            VStack(alignment: .center){
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12.0){
                        
                        ForEach(0..<10) {_ in
                            
                            Button {
                                
                                isPresented.toggle()
                            }label: {
                                Text("Social media")
                            }
                            .frame(width: 98, height: 64)
                            .font(.system(size:18))
                            .foregroundColor(.white)
                            .background(Color(red: 0.46, green: 0.624, blue: 0.946))
                            .cornerRadius(25)
                            .fullScreenCover(isPresented:$isPresented ){colorpalettebasedonword()}
                            
                            
                            Button(action: {}) {
                                Text("Desert")
                            }
                            .frame(width: 98, height: 64)
                            .font(.system(size:18))
                            .foregroundColor(.white)
                            .background(Color(red: 0.866, green: 0.571, blue: 0.426))
                            .cornerRadius(25)
                            
                            Button(action: {}) {
                                Text("Grass")
                            }
                            .frame(width: 98, height: 64)
                            .font(.system(size:18))
                            .foregroundColor(.white)
                            .background(Color(red: 0.506, green: 0.756, blue: 0.666))
                            .cornerRadius(25)
                            
                            Button(action: {}) {
                                Text("Flamingo")
                            }
                            .frame(width: 98, height: 64)
                            .font(.system(size:18))
                            .foregroundColor(.white)
                            .background(Color(red: 0.881, green: 0.715, blue: 0.684))
                            .cornerRadius(25)
                            
                            Button(action: {}) {
                                Text("Jungle")
                            }
                            .frame(width: 98, height: 64)
                            .font(.system(size:18))
                            .foregroundColor(.white)
                            .background(Color(red: 0.524, green: 0.574, blue: 0.273))
                            .cornerRadius(25)
                            
                            Button(action: {}) {
                                Text("Coconut")
                            }
                            .frame(width: 98, height: 64)
                            .font(.system(size:18))
                            .foregroundColor(.white)
                            .background(Color(red: 0.735, green: 0.441, blue: 0.28))
                            .cornerRadius(25)
                            
                            Button(action: {}) {
                                Text("Sky")
                            }
                            .frame(width: 98, height: 64)
                            .font(.system(size:18))
                            .foregroundColor(.white)
                            .background(Color(red: 0.311, green: 0.467, blue: 0.646))
                            .cornerRadius(25)
                            
                            
                            Button(action: {}) {
                                Text("َQueen")
                            }
                            .frame(width: 98, height: 64)
                            .font(.system(size:18))
                            .foregroundColor(.white)
                            .background(Color(red: 0.718, green: 0.718, blue: 0.718))
                            .cornerRadius(25)
                            
                            Button(action: {}) {
                                Text("Happy")
                            }
                            .frame(width: 98, height: 64)
                            .font(.system(size:18))
                            .foregroundColor(.white)
                            .background(Color(red: 0.78, green: 0.597, blue: 0.123))
                            .cornerRadius(25)
                            
                        }
                        
                    }
                    
                    .position(self.obstPosition)

                        .onReceive(self.timer) {_ in withAnimation{
                            self.obstMove()

                            withAnimation(.linear(duration: 4).repeatForever(autoreverses: false).speed(0.2)){
                                move.toggle()
                            }

                        }
                        }
                    Spacer()
                        .padding(60)
                    //                .padding()
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: -12.0){
                        
                        ForEach(0..<10) {_ in
                            
                            Button(action: {}) {
                                Text("Rainbow")
                            }
                            .frame(width: 98, height: 64)
                            .font(.system(size:18))
                            .foregroundColor(.white)
                            .background(Color(red: 0.993, green: 0.788, blue: 0.274))
                            .cornerRadius(25)
                            
                            
                            Button(action: {}) {
                                Text("Flower")
                            }
                            .frame(width: 98, height: 64)
                            .font(.system(size:18))
                            .foregroundColor(.white)
                            .background(Color(red: 0.851, green: 0.618, blue: 0.862))
                            .cornerRadius(25)
                            
                            Button{
                                
                                isPresented2.toggle()
                            }label: {
                                Text("Love")
                            }
                            .frame(width: 98, height: 64)
                            .font(.system(size:18))
                            .foregroundColor(.white)
                            .background(Color(red: 0.924, green: 0.534, blue: 0.61))
                            .cornerRadius(25)
                            .fullScreenCover(isPresented:$isPresented2 ){Lovesheet()}
                            
                            Button(action: {}) {
                                Text("Water")
                            }
                            .frame(width: 98, height: 64)
                            .font(.system(size:18))
                            .foregroundColor(.white)
                            .background(Color(red: 0.44, green: 0.48, blue: 0.799))
                            .cornerRadius(25)
                            
                        }
                        .position(self.obstPosition)
                        .onReceive(self.timer) {_ in withAnimation{
                            self.obstMove()
                            
                
                        }
                        }

                        .padding()

                        
                    }
                    
//                        Divider()


//                    .padding(45)

                }
                .padding(-70)
Spacer()
                    .padding(10)
                Divider()
//                    .padding()
            }
        }
    }
    func gravity() {
            self.heliPosition.x -= 5
        }
        func obstMove() {
                self.obstPosition.x -= 5
            }
    
    struct Colorsline1_Previews: PreviewProvider {
        static var previews: some View {
            Colorsline1()
        }
    }
}
