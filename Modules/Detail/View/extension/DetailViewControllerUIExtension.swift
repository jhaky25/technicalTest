//
//  DetailViewControllerUIExtension.swift
//  technicalTest
//
//  Created by Jaqueline Sanchez on 20/02/26.
//

import UIKit

extension DetailViewController {
    
    func setupUI() {
        view.backgroundColor = .systemBackground
        addScrollView()
        addContentView()
        addImageView()
        addPlayButton()
        addTitleLabel()
        addInfoLabel()
        addDescriptionLabel()
    }
    
    private func addScrollView() {
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private func addContentView() {
        scrollView.addSubview(contenView)
        contenView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contenView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contenView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contenView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contenView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contenView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
    }
    
    private func addImageView() {
        contenView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contenView.topAnchor, constant: 16),
            imageView.leadingAnchor.constraint(equalTo: contenView.leadingAnchor, constant: 16),
            imageView.trailingAnchor.constraint(equalTo: contenView.trailingAnchor, constant: -16),
            imageView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    private func addPlayButton() {
        contenView.addSubview(playButton)
        playButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            playButton.centerXAnchor.constraint(equalTo: imageView.centerXAnchor),
            playButton.centerYAnchor.constraint(equalTo: imageView.centerYAnchor),
            playButton.widthAnchor.constraint(equalToConstant: 70),
            playButton.heightAnchor.constraint(equalToConstant: 70),
        ])
    }
    
    private func addTitleLabel() {
        contenView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: imageView.trailingAnchor)
        ])
    }
    
    private func addInfoLabel() {
        contenView.addSubview(infoLabel)
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            infoLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            infoLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            infoLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor)
        ])
    }
    
    func addDescriptionLabel(){
        contenView.addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 16),
            descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: contenView.bottomAnchor)
        ])
    }
}
