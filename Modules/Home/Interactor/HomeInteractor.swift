//
//  HomeInteractor.swift
//  technicalTest
//
//  Created by Jaqueline Sanchez on 19/02/26.
//

import UIKit

final class HomeInteractor: HomeInteractorProtocol {
    
    weak var presenter: HomeInteractorOutputProtocol?
    private let apiClient: APIClientProtocol
    
    init(apiClient: APIClientProtocol = APIClient.shred) {
        self.apiClient = apiClient
    }
    
    func fetchMovies() {
        
        let url = "https://ghibliapi.vercel.app/films"
        
        apiClient.request(endpoint: url, type: [Movie].self) { [weak self] result in
            
            DispatchQueue.main.async {
                switch result {
                case .success(let movies):
                    self?.presenter?.didFetchMovies(movies)
                case .failure(let error):
                    self?.presenter?.didFail(with: error)
                }
            }
        }
    }
}
