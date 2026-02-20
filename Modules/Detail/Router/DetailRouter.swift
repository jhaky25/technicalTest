//
//  DetailRouter.swift
//  technicalTest
//
//  Created by Jaqueline Sanchez on 19/02/26.
//

import UIKit

final class DetailRouter: DetailRouterProtocol {
    
    static func createModule(with movie: Movie) -> UIViewController {
        
        let view = DetailViewController()
        let presenter = DetailPresenter(movie: movie)
        
        view.presenter = presenter
        presenter.view = view
        
        return view
    }
}
