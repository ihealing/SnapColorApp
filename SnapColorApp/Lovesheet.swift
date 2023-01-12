//
//  2colorpalettebasedonword.swift
//  Snapcolor
//
//  Created by Shifa Alfaisal on 18/06/1444 AH.
//

import SwiftUI

struct Lovesheet: View {
    @State private var isPresented = false
    @State private var isPresented1 = false
    @State private var showSheet: Bool = false
    @State private var showSheet2: Bool = false
    @State private var showSheet3: Bool = false
    @State private var showSheet4: Bool = false
    @State private var showSheet5: Bool = false
    @State private var showSheet6: Bool = false
    @State private var showSheet7: Bool = false






    var body: some View {
        NavigationView{
            ScrollView{
                HStack {
                    NavigationLink(destination:ContentView().navigationBarHidden(true) ){
                        
                        Image(systemName: "chevron.backward.circle")
                            .imageScale(.large)
                            .foregroundColor(Color(red: 0.494, green: 0.494, blue: 0.494))
                        
                    }
                    Text("Love        ")
                        .padding(.horizontal, 90.0)
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
                            showSheet4.toggle()
                        }label: {
                            
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(red: 0.906, green: 0.04, blue: 0.062))
                                .frame(width: 153.00, height: 203.00)
                                .sheet(isPresented: $showSheet4){
                                    showSheet4View()
                                        .presentationDetents([.medium])
                                }
                        }
                        Button{
                            showSheet6.toggle()
                        }label: {
                            
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(red: 0.691, green: 0.16, blue: 0.126))
                                .frame(width: 153.00, height: 203.00)
                                .sheet(isPresented: $showSheet6){
                                    showSheet6View()
                                        .presentationDetents([.medium])
                                }
                        }
                    }
                    HStack{
                        Button{
                            showSheet5.toggle()
                        }label: {
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(red: 0.93, green: 0.168, blue: 0.201))
                                .frame(width: 153.00, height: 203.00)
                                .sheet(isPresented: $showSheet5){
                                    showSheet5View()
                                        .presentationDetents([.medium])
                                }
                        }
                        
                        
                        Button{
                            showSheet7.toggle()
                        }label: {
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(red: 0.937, green: 0.009, blue: 0.004))
                                .frame(width: 153.00, height: 203.00)
                                .sheet(isPresented: $showSheet7){
                                    showSheet7View()
                                        .presentationDetents([.medium])
                                }
                        }
                    }
                    HStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(red: 0.86, green: 0.92, blue: 0.987))
                            .frame(width: 153.00, height: 203.00)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(red: 0.764, green: 0.564, blue: 0.308))
                            .frame(width: 153.00, height: 203.00)
                        
                    }
                    
                }
                
                
            }
        }
    }
}


struct Lovesheet_Previews: PreviewProvider {
    static var previews: some View {
        Lovesheet()
    }
}
