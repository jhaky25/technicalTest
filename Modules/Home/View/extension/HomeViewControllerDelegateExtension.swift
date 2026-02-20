//
//  HomeViewControllerDelegateExtension.swift
//  technicalTest
//
//  Created by Jaqueline Sanchez on 19/02/26.
//

import UIKit

extension HomeViewController:  UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return HomeSection.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        guard let sectionType = HomeSection(rawValue: section) else { return 0 }
        
        switch sectionType {
        case .featured: return featured.count
        case .new: return new.count
        case .popular: return popular.count
        case .genre: return genre.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MovieCell.identifier, for: indexPath) as! MovieCell
        
        guard let section = HomeSection(rawValue: indexPath.section) else { return cell }
        
        let movie: Movie
        
        switch section {
        case .featured:
            movie = featured[indexPath.item]
        case .new:
            movie = new[indexPath.item]
        case .popular:
            movie = popular[indexPath.item]
        case .genre:
            movie = genre[indexPath.item]
        }
        
        cell.configure(with: movie)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard let section = HomeSection(rawValue: indexPath.section) else { return }
        
        let movie: Movie
        
        switch section {
        case .featured:
            movie = featured[indexPath.item]
        case .new:
            movie = new[indexPath.item]
        case .popular:
            movie = popular[indexPath.item]
        case .genre:
            movie = genre[indexPath.item]
        }
        
        presenter?.didSelected(movie: movie)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        guard kind == UICollectionView.elementKindSectionHeader else {
            return UICollectionReusableView()
        }
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: SectionHeaderView.identifier, for: indexPath) as! SectionHeaderView
        
        let title: String
        
        switch HomeSection(rawValue: indexPath.section) {
        case .featured:
            title = HomeSection.featured.title
        case .new:
            title = HomeSection.new.title
        case .popular:
            title = HomeSection.popular.title
        case .genre:
            title = HomeSection.genre.title
        default:
            title = ""
        }
        
        header.configure(with: title)
        return header
    }

}
