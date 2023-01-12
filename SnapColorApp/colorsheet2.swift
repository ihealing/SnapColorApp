//
//  colorsheet.swift
//  color picker
//
//  Created by noor alotibi on 11/06/1444 AH.
//

import SwiftUI
struct colorsheet2: View {
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
struct showSheet2View: View {
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(red: 0.475, green: 0.72, blue: 0.974))
                    .frame(width: 331.00, height: 161.00)
                    .padding(.bottom, 11.0)
                Text("social media")
                  .font(Font.custom("Inter-Regular", size: 24))
                  .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.96))
                  .frame(minWidth: 141.00, minHeight: 29.00, alignment: .topLeading)
            }
            Text("HEX: 8CBCFC")
                .font(Font.custom("Inter-Regular", size: 24))
                .foregroundColor(Color(red: 0.50, green: 0.50, blue: 0.50))
                .padding(.trailing, 131.0)
                .frame(minWidth: 198.00, minHeight: 38.00,alignment: .leading)
            Text("CMYK: 44,25,0,1")
                .font(Font.custom("Inter-Regular", size: 24))
                .foregroundColor(Color(red: 0.50, green: 0.50, blue: 0.50))
                .padding(.trailing, 99.0)
                .frame(minWidth: 198.00, minHeight: 38.00, alignment: .leading)
            Text("RGB: 140,188,252")
                .font(Font.custom("Inter-Regular", size: 24))
                .foregroundColor(Color(red: 0.50, green: 0.50, blue: 0.50))
                .padding(.trailing, 83.0)
                .frame(minWidth: 198.00, minHeight: 38.00, alignment: .leading)
        }
    }
}
struct colorsheet2_Previews: PreviewProvider {
    static var previews: some View {
        colorsheet()
    }
}
