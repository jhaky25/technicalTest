//
//  UIImageView+Extension.swift
//  technicalTest
//
//  Created by Jaqueline Sanchez on 19/02/26.
//

import UIKit

extension UIImageView {
    
    func loadImage(form urlImg: String) {
        if let cache = ImageCache.shared.getImage(for: urlImg) {
            self.image = cache
            return
        }
        
        guard let url = URL(string: urlImg) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            
            guard let data = data, let image = UIImage(data: data) else { return }
            
            ImageCache.shared.saveImage(image: image, for: urlImg)
            
            DispatchQueue.main.async {
                self.image = image
            }
            
        }.resume()
    }
}
