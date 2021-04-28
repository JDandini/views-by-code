//
//  HomeViewController.swift
//  ViewsByCode
//
//  Created by F J Castaneda Ramos on 27/01/21.
//

import UIKit

final class HomeViewController: UIViewController {
    var presenter: HomePresenterProtocol?

    var productCollection: UICollectionView = {
        let layout = UICollectionViewLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .lightGray
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(productCollection)
        setupConstraints()
    }

    private func setupConstraints() {
        productCollection.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        productCollection.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        productCollection.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        productCollection.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

}

extension HomeViewController: HomeViewProtocol {}
