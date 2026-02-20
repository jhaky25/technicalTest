//
//  DetailPresenter.swift
//  technicalTest
//
//  Created by Jaqueline Sanchez on 19/02/26.
//

import UIKit

final class DetailPresenter: DetailPresenterProtocol {
    
    weak var view: DetailViewProtocol?
    private let movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
    
    func viewDidLoad() {
        view?.showMovie(movie)
    }
}
