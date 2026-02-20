//
//  HomeViewProtocol.swift
//  technicalTest
//
//  Created by Jaqueline Sanchez on 19/02/26.
//

import UIKit

protocol HomeViewProtocol: AnyObject {
    func showLoading()
    func hideLoading()
    func showMovies(movies: [Movie])
    func showError(message: String)
}

protocol HomePresenterProtocol: AnyObject {
    func viewDidLoad()
    func fetchMovies()
    func didSelected(movie: Movie)
}

protocol HomeInteractorProtocol: AnyObject {
    func fetchMovies()
}

protocol HomeInteractorOutputProtocol: AnyObject {
    func didFetchMovies(_ movies: [Movie])
    func didFail(with error: NetworkError)
}

protocol HomeRouterProtocol: AnyObject {
    func navigationDetail(from view: UIViewController, movie: Movie)
}
