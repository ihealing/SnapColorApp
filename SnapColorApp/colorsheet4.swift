//
//  Lovecolorsheet.swift
//  Snapcolor
//
//  Created by Shifa Alfaisal on 18/06/1444 AH.
//

import SwiftUI

struct colorsheet4: View {
    @State private var showSheet: Bool = false
    var body: some View {
        Button(" show"){
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet){
            showSheetView()
                .presentationDetents([.medium])
        }
    }
}
struct showSheet4View: View {
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(red: 0.902, green: 0.044, blue: 0.054))
                    .frame(width: 331.00, height: 161.00)
                    .padding(.bottom, 11.0)
                Text("love             ")
                  .font(Font.custom("Inter-Regular", size: 24))
                  .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.96))
                  .frame(minWidth: 141.00, minHeight: 29.00, alignment: .topLeading)
            }
            Text("HEX: D53024")
                .font(Font.custom("Inter-Regular", size: 24))
                .foregroundColor(Color(red: 0.50, green: 0.50, blue: 0.50))
                .padding(.trailing, 131.0)
                .frame(minWidth: 198.00, minHeight: 38.00,alignment: .leading)
            Text("CMYK: 0,65,69,16")
                .font(Font.custom("Inter-Regular", size: 24))
                .foregroundColor(Color(red: 0.50, green: 0.50, blue: 0.50))
                .padding(.trailing, 99.0)
                .frame(minWidth: 198.00, minHeight: 38.00, alignment: .leading)
            Text("RGB: 213,48,36")
                .font(Font.custom("Inter-Regular", size: 24))
                .foregroundColor(Color(red: 0.50, green: 0.50, blue: 0.50))
                .padding(.trailing, 123.0)
                .frame(minWidth: 198.00, minHeight: 38.00, alignment: .leading)
        }
    }
}

struct colorsheet4_Previews: PreviewProvider {
    static var previews: some View {
        colorsheet3()
    }
}
