//
//  HomeViewControllerProtocolExtension.swift
//  technicalTest
//
//  Created by Jaqueline Sanchez on 19/02/26.
//

import UIKit

extension HomeViewController: HomeViewProtocol {
    
    func showLoading() {
        activityIndicator.startAnimating()
    }
    
    func hideLoading() {
        activityIndicator.stopAnimating()
    }
    
    /// Muestra peliculas organizadas en diferentes secciones
    /// Divide el arreglo recibido eb 4 grupos definidos, distruye los items de manera equitativa en la vista
    /// - Parameter movies: Lista de peliculas obtenidas del interator
    func showMovies(movies: [Movie]) {
        featured.removeAll()
        new.removeAll()
        popular.removeAll()
        genre.removeAll()
        
        guard !movies.isEmpty else { collectionView.reloadData()
            return
        }
        
        let sectionsCount = 4
        let chunkSize = max(1, Int(ceil(Double(movies.count) / Double(sectionsCount))))
        
        let chunks = stride(from: 0, to: movies.count, by: chunkSize).map {
            Array(movies[$0..<min($0 + chunkSize, movies.count)])
        }
        
        if chunks.indices.contains(0) { featured = chunks[0] }
        if chunks.indices.contains(1) { new = chunks[1] }
        if chunks.indices.contains(2) { popular = chunks[2] }
        if chunks.indices.contains(3) { genre = chunks[3] }
        
        collectionView.reloadData()
    }

    func showError(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default))
        present(alert, animated: true)
    }
}
