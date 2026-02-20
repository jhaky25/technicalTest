//
//  HomeRouter.swift
//  technicalTest
//
//  Created by Jaqueline Sanchez on 19/02/26.
//

import UIKit

final class HomeRouter: HomeRouterProtocol {
    
    static func createModule() -> UIViewController {
        
        let view = HomeViewController()
        let presenter = HomePresenter()
        let interactor = HomeInteractor()
        let router = HomeRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return UINavigationController(rootViewController: view)
    }
    
    func navigationDetail(from view: UIViewController, movie: Movie) {
        let detailVC = DetailRouter.createModule(with: movie)
        view.navigationController?.pushViewController(detailVC, animated: true)
    }
}
