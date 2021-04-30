//
//  CategoryCell.swift
//  ViewsByCode
//
//  Created by Javier Castañeda on 28/04/21.
//

import UIKit

final class CategoryCell: UICollectionViewCell, Displayable {
    typealias DisplayType = CategoryItem
    var isNameAtTop: Bool = true

    private let categoryNameLabel: UILabel = {
        let label = UILabel(style: .paragraphBold)
        label.numberOfLines = 2
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Category"
        return label
    }()

    private let categoryImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "sofas")
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

    private func setupUI() {
        layer.cornerRadius = 5
        layer.masksToBounds = true
        contentView.addSubview(categoryImage)
        contentView.addSubview(categoryNameLabel)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            categoryImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            categoryImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            categoryImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            categoryImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

            categoryNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: ViewMetrics.doubleSpace),
            categoryNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -ViewMetrics.doubleSpace)
        ])
        if isNameAtTop {
            categoryNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: ViewMetrics.tripleSpace).isActive = true
        } else {
            categoryNameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -ViewMetrics.tripleSpace).isActive = true
        }
    }

    func configure(with displayItem: CategoryItem) {
        categoryNameLabel.text = displayItem.name
        guard let image = UIImage(named: displayItem.image) else { return }
        categoryImage.image = image
    }
}
