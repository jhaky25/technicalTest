//
//  HomePresenter.swift
//  technicalTest
//
//  Created by Jaqueliine Sanchez on 19/02/26.
//

import UIKit

final class HomePresenter: HomePresenterProtocol {
    
    weak var view: HomeViewProtocol?
    var interactor: HomeInteractorProtocol?
    var router: HomeRouterProtocol?
    
    private var movies: [Movie] = []
    
    func viewDidLoad() {
        view?.showLoading()
        interactor?.fetchMovies()
    }
    
    func fetchMovies() {
        view?.showLoading()
        interactor?.fetchMovies()
    }
    
    func didSelected(movie: Movie) {
        if let viewController = view as? UIViewController {
            router?.navigationDetail(from: viewController, movie: movie)
        }
    }
}

extension HomePresenter: HomeInteractorOutputProtocol {
    
    func didFetchMovies(_ movies: [Movie]) {
        self.movies = movies
        view?.hideLoading()
        view?.showMovies(movies: movies)
    }
    
    func didFail(with error: NetworkError) {
        view?.hideLoading()
        view?.showError(message: error.localizedDescription)
    }
}
