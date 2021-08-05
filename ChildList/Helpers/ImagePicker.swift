//
//  ImagePicker.swift
//  ChildList
//
//  Created by Василий Петухов on 04.08.2021.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var image: UIImage
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {}
}

final class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    let imagePicker: ImagePicker

    init(_ imagePicker: ImagePicker) {
        self.imagePicker = imagePicker
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        if let uiImage = info[.originalImage] as? UIImage {
//            saveImage(image: uiImage)
            imagePicker.image = uiImage
        }
        imagePicker.presentationMode.wrappedValue.dismiss()
    }
    
//    private func saveImage(image: UIImage) {
//        let dataImage = image.pngData()
//        let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
//        let url = documentsPath.appendingPathComponent("parentLogo.png")
//
//        do {
//            try dataImage?.write(to: url)
//            UserDefaults.standard.set(url.absoluteString, forKey: "parentLogo")
//        } catch {
//            print("Unable to Write Data to Disk (\(error))")
//        }
//    }
}
