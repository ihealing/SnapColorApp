//
//  ContentView.swift
//  SnapColorApp
//
//  Created by Shifa Alfaisal on 19/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    static var shouldDifferentiateWithoutColor: Bool  = false
    let names = ["Social media", "Desert", "Grass", "Rainbow", "Flower", "Love", "Water" ]
    @State private var searchText = ""
    @State private var isPresented = false
    @State private var isPresented1 = false
        @State private var isPresented2 = false

        

            @State var text = ""
            var body: some View {
                NavigationView {
                    
                    VStack {
                        SearchBar(text: $text)
                            .padding()
                        
                        List {
                            ForEach(names.filter({"\($0)".contains(text) }), id: \.self) { name in
                                Button {
                                    Text(name)
                                    isPresented1 .toggle()
                                } label: {
                                    Text(name)
                                }
                                Button {
                                    Text(name)
                                    isPresented2 .toggle()
                                } label: {
                                    Text(name)
                                }
                            }
                            
                        }
                        .listStyle(.plain)
                        .frame(width: 10,height: 10)
                        .fullScreenCover(isPresented: $isPresented1)
                        {colorpalettebasedonword()}
                            .fullScreenCover(isPresented: $isPresented2)
                            {Lovesheet()}
    //                        .frame(width: 100, height: 50)
                        VStack{
                            Colorsline1()
                                                  Spacer()
                                .padding()

                            Colorsline2()
    //                        Spacer()
                            .padding(40)
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
