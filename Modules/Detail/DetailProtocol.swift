//
//  DetailProtocol.swift
//  technicalTest
//
//  Created by Jaqueline Sanchez on 19/02/26.
//

import UIKit

protocol DetailViewProtocol: AnyObject {
    func showMovie(_ movie: Movie)
}

protocol DetailPresenterProtocol: AnyObject {
    func viewDidLoad()
}

protocol DetailRouterProtocol: AnyObject {
    static func createModule(with movie: Movie) -> UIViewController
}
