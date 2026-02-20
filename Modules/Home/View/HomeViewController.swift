//
//  HomeViewController.swift
//  technicalTest
//
//  Created by Jaqueline Sanchez on 19/02/26.
//

import UIKit

final class HomeViewController: UIViewController {
    
    var presenter: HomePresenterProtocol?
    
    var movies: [Movie] = []
    var featured: [Movie] = []
    var new: [Movie] = []
    var popular: [Movie] = []
    var genre: [Movie] = []

    
    let activityIndicator = UIActivityIndicatorView(style: .large)
    let refreshContoller = UIRefreshControl()
    
    lazy var collectionView: UICollectionView = {
        let collection = UICollectionView(frame: .zero, collectionViewLayout: createLayout())
        collection.register(MovieCell.self, forCellWithReuseIdentifier:  MovieCell.identifier)
        collection.register(SectionHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: SectionHeaderView.identifier)
        collection.backgroundColor = .systemBackground
        collection.delegate = self
        collection.dataSource = self
        
        return collection
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.contentInsetAdjustmentBehavior = .automatic
        presenter?.viewDidLoad()
        setupUI()
    }
    
    @objc func refreshData() {
        presenter?.fetchMovies()
        refreshContoller.endRefreshing()
    }
    
}
