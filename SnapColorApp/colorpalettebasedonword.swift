//
//  colorpalettebasedonword.swift
//  color picker
//  Created by noor alotibi on 11/06/1444 AH.


import SwiftUI

struct colorpalettebasedonword: View {
    @State private var isPresented = false
    @State private var isPresented1 = false
    @State private var showSheet: Bool = false
    @State private var showSheet2: Bool = false
    @State private var showSheet3: Bool = false


    var body: some View {
        NavigationView{
            ScrollView{
                HStack {
                    NavigationLink(destination:ContentView().navigationBarHidden(true) ){
                        
                        Image(systemName: "chevron.backward.circle")
                            .imageScale(.large)
                            .foregroundColor(Color(red: 0.494, green: 0.494, blue: 0.494))
                        
                    }
                    Text("Social media     ")
                        .padding(.horizontal, 50.0)
                }
                .sheet(isPresented:$isPresented1 ){ContentView()}
                
                
                .font(Font.custom("Inter-Bold", size: 24))
                .foregroundColor(Color(red: 0.50, green: 0.50, blue: 0.50))
                .padding(.bottom, 35.0)
                .frame(minWidth: 147.00, minHeight: 29.00)
                .padding()
                
                VStack{
                    
                    HStack{
                        Button{
                            showSheet2.toggle()
                        }label: {
                            
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(hue: 0.594, saturation: 0.445, brightness: 0.97))
                                .frame(width: 153.00, height: 203.00)
                                .sheet(isPresented: $showSheet2){
                                    showSheet2View()
                                        .presentationDetents([.medium])
                                }
                        }
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(red: 0.50, green: 0.63, blue: 0.94))
                            .frame(width: 153.00, height: 203.00)
                    }
                    
                    
                    HStack{
                        Button{
                            showSheet.toggle()
                        }label: {
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(red: 0.58, green: 0.77, blue: 0.98))
                                .frame(width: 153.00, height: 203.00)
                                .sheet(isPresented: $showSheet){
                                    showSheetView()
                                        .presentationDetents([.medium])
                                }
                        }
                        
                        
                        Button{
                            showSheet3.toggle()
                        }label: {
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(red: 0.05, green: 0.24, blue: 0.36))
                                .frame(width: 153.00, height: 203.00)
                                .sheet(isPresented: $showSheet3){
                                    showSheet3View()
                                        .presentationDetents([.medium])
                                }
                        }
                    }
                    HStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(red: 0.07, green: 0.59, blue: 0.86))
                            .frame(width: 153.00, height: 203.00)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(red: 0.24, green: 0.51, blue: 0.96))
                            .frame(width: 153.00, height: 203.00)
                        
                    }
                    
                }
                
                
            }
        }
    }
}

struct colorpalettebasedonword_Previews: PreviewProvider {
    static var previews: some View {
        colorpalettebasedonword()
    }
}
