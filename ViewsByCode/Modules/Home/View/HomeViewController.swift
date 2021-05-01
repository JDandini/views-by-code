//
//  HomeViewController.swift
//  ViewsByCode
//
//  Created by F J Castaneda Ramos on 27/01/21.
//

import UIKit

final class HomeViewController: UIViewController {
    var presenter: HomePresenterProtocol?

    var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: ViewMetrics.doubleSpace,
                                           left: ViewMetrics.doubleSpace,
                                           bottom: ViewMetrics.singleSpace,
                                           right: ViewMetrics.doubleSpace)
        let screenWidth = UIScreen.main.bounds.width
        layout.headerReferenceSize = CGSize(width: screenWidth,
                                            height: ViewMetrics.singleSpace * ViewMetrics.singleSpace)
        let width = screenWidth/2.5
        layout.itemSize = CGSize(width: width, height: width * 4/3)
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .lightText
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        collectionView.register(HeroCell.self,
                                   forCellWithReuseIdentifier: HeroCell.identifier)
        collectionView.register(BannerCell.self,
                                   forCellWithReuseIdentifier: BannerCell.identifier)
        collectionView.register(CategoryCell.self,
                                   forCellWithReuseIdentifier: CategoryCell.identifier)
        collectionView.register(HomeHeader.self,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                withReuseIdentifier: HomeHeader.identifier)
        view.backgroundColor = .white
        view.addSubview(collectionView)
        setupConstraints()
    }

    private func setupConstraints() {
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

}

extension HomeViewController: HomeViewProtocol {}
