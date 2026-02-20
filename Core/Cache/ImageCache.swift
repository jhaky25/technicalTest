//
//  ImageCache.swift
//  technicalTest
//
//  Created by Jaqueline Sanchez on 19/02/26.
//

import UIKit

final class ImageCache {
    
    static let shared = ImageCache()
    
    private let chache = NSCache<NSString, UIImage>()
    
    private init() {}
    
    func saveImage(image:UIImage, for Key: String) {
        chache.setObject(image, forKey: Key as NSString)
    }
    
    func getImage(for key: String) -> UIImage? {
        chache.object(forKey: key as NSString)
    }

}
