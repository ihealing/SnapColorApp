//
//  Colorsline2.swift
//  Snapcolor
//
//  Created by Shifa Alfaisal on 11/06/1444 AH.
//

import SwiftUI

struct Colorsline2: View {
    @State var showPicker: Bool = false
    @State var selectedColor: Color = .white
    @State var showImagePicker: Bool = false
    var body: some View {
        

           
                
                VStack {
                    HStack{
                        Text("Generate palettes")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.494, green: 0.494, blue: 0.494))
                            .padding(.trailing, 60.0)
//
                        Button {
                          
                            showPicker.toggle()
                        }label: {
                            Image(systemName: "plus")
                                .imageScale(.large)
                                .foregroundColor(Color(red: 0.494, green: 0.494, blue: 0.494))
                        }
                        .onTapGesture {
                            showImagePicker.toggle()
                            
                        }
                        .imageColorPicker(showPicker: $showPicker, color: $selectedColor)
                        
                       
                    }
                    .padding(-50)
                Image("Image 1")
                        .resizable()
                        .frame(width: 300 , height: 250)
                        .cornerRadius(25)

                   
                 


                }
            

        }

    }

struct Colorsline2_Previews: PreviewProvider {
    static var previews: some View {
        Colorsline2()
    }
}
