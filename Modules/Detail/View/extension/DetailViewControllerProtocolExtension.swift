//
//  DetailViewControllerProtocolExtension.swift
//  technicalTest
//
//  Created by Jaqueline Sanchez on 19/02/26.
//

import UIKit

extension DetailViewController: DetailViewProtocol {
    
    /// Configuracion de la vista de detalle
    /// - Parameter movie: Modelo con la informacion que se mostrada en la vista
    func showMovie(_ movie: Movie) {
        title = movie.title
        titleLabel.text = movie.title
        infoLabel.text = "Director: \(movie.director) • \(movie.releaseDate)"
        descriptionLabel.text = movie.description
        imageView.loadImage(form: movie.image ?? "")
        
        videoURL = URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")
    }
}
