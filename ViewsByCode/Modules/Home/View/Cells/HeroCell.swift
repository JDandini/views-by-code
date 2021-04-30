//
//  HeroCell.swift
//  ViewsByCode
//
//  Created by Javier Castañeda on 28/04/21.
//

import UIKit

final class HeroCell: UICollectionViewCell, Displayable {
    typealias DisplayType = Hero

    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "hero1")
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
        setupConstraints()
    }

    func configure(with displayItem: Hero) {
        guard let image = UIImage(named: displayItem.image) else { return }
        imageView.image = image
    }

    private func setupUI() {
        contentView.addSubview(imageView)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
