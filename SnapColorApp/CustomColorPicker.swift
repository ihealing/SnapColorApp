//
//  CustomColorPicker.swift
//  color picker
//
//  Created by noor alotibi on 09/06/1444 AH.
//
import SwiftUI
import PhotosUI
extension View{
    func imageColorPicker(showPicker: Binding<Bool>,color: Binding<Color>)-> some View{
        return self
        .fullScreenCover(isPresented: showPicker){
            
        } content:{
     Helper(showPicker: showPicker, color: color)
            
        }
    }
}

struct Helper: View{
    @Binding var showPicker: Bool
    @Binding var color: Color
    @State var showImagePicker: Bool = false
    @State var imageData: Data = .init(count: 0)
    var body: some View{
        NavigationView{
            VStack(spacing: 10){
                GeometryReader{ proxy in
                    let size = proxy.size
                    VStack(spacing: 12){
                        if let image = UIImage(data: imageData){
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: size.width , height: size.height)
                        }
                        else{
                            Button {
                                showPicker.toggle()
                            }label: {
                     
                            }
                            Image("Asset 2")
                                .resizable()
        //                        .padding(.top)
                                .frame(width: 61, height: 61)
                            .font(.system(size: 14, weight:.light))
                            Text("Upload image:")
                                .font(.title2)
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.494, green: 0.494, blue: 0.494))
                                .multilineTextAlignment(.leading)
                                      }
                    }
                    .frame( maxWidth:.infinity,maxHeight:  .infinity , alignment: .center)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        showImagePicker.toggle()
                        
                    }
                }
     
                ZStack(alignment: .top){
                    Rectangle()
                        .fill(color)
                        .frame(height: 90)
                    CustomColorPicker(color: $color)
                        .frame(width:100,height: 50, alignment: .topLeading
                        )
                        .clipped()
                        .offset(x: 15)
                }
            }
            .ignoresSafeArea(.container, edges: .bottom)
                    .navigationTitle("Image color Picker")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        Button("Close"){
                            showPicker.toggle()
                        }
                    }
                    .sheet(isPresented: $showImagePicker){
                    
                    }
        content: {
            ImagePicker(showPicker: $showImagePicker, imageData: $imageData)
        }
        }
    
    }
}

struct ImagePicker: UIViewControllerRepresentable{
    @Binding var showPicker: Bool
    @Binding var imageData: Data
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
       
    }
    func makeUIViewController(context: Context) -> PHPickerViewController {
        var config = PHPickerConfiguration()
        config.selectionLimit = 1
        let picker = PHPickerViewController(configuration: config)
        picker.delegate = context.coordinator
        return picker
    }
    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {
        
    }
    class Coordinator: NSObject,PHPickerViewControllerDelegate{
        var parent: ImagePicker
        init(parent: ImagePicker){
            self.parent = parent
        }
        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]){
            if let first = results.first{
                first.itemProvider.loadObject(ofClass: UIImage.self ){[self] result, err in
                    guard let image = result as? UIImage else{
                        parent.showPicker.toggle()
                        return
                    }
                    parent.imageData = image.jpegData(compressionQuality: 1) ?? .init(count: 0)
                    parent.showPicker.toggle()
                }
            }
            else{
                parent.showPicker.toggle()
            }
        }
    }
}
        struct CustomColorPicker: UIViewControllerRepresentable{
            func makeCoordinator() -> Coordinator {
                return Coordinator(parent: self)
            }
            @Binding var color: Color
            
            func makeUIViewController(context: Context) -> UIColorPickerViewController {
                let picker = UIColorPickerViewController()
                picker.supportsAlpha = false
                picker.selectedColor = UIColor(color)
                picker.delegate = context.coordinator
                picker.title = ""
                return picker
            }
            func updateUIViewController(_ uiViewController: UIColorPickerViewController, context: Context) {
                uiViewController.view.tintColor = (color.isDarkColor ? .white : .black)
            }
            class Coordinator: NSObject,UIColorPickerViewControllerDelegate{
                var parent: CustomColorPicker
                init(parent: CustomColorPicker) {
                    self.parent = parent
                }
                func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
                    parent.color = Color( viewController.selectedColor)
                }
                func colorPickerViewController(_ viewController: UIColorPickerViewController, didSelect color: UIColor, continuously: Bool) {
                    parent.color = Color(color)
                }
            }
        }
extension Color{
    var isDarkColor: Bool {
        return UIColor(self).isDarkColor
    }
}
extension UIColor{
    var isDarkColor: Bool {
        var (r, g, b, a): (CGFloat,CGFloat,CGFloat,CGFloat) = ( 0,0,0,0)
        self.getRed(&r, green: &g , blue: &b, alpha: &a)
        let lum = 0.2126 * r + 0.7152 * g + 0.0722 * b
        return lum < 0.50
    }
}
