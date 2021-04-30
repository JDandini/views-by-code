//
//  BannerCell.swift
//  ViewsByCode
//
//  Created by Javier Castañeda on 28/04/21.
//

import UIKit

final class BannerCell: UICollectionViewCell, Displayable {
    typealias DisplayType = HomeBanner
    var isTitleOnTop = true

    private let mainImage: UIImageView = {
        let imageview = UIImageView()
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.image = UIImage(named: "ar-hero")
        return imageview
    }()

    private let bannerStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 8
        stack.distribution = .fillProportionally
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    private let icon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "arkit")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private let bannerName: UILabel = {
        let label = UILabel(style: .headerTitle)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        contentView.addSubview(mainImage)
        backgroundColor = .darkGray
        bannerStack.addArrangedSubview(icon)
        bannerStack.addArrangedSubview(bannerName)
        contentView.addSubview(bannerStack)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            mainImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            mainImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            mainImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            mainImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

            bannerStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: ViewMetrics.doubleSpace),
            bannerStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -ViewMetrics.doubleSpace),
            icon.heightAnchor.constraint(equalToConstant: ViewMetrics.banneIconHeigt),
            icon.widthAnchor.constraint(equalTo: icon.heightAnchor, multiplier: 1)
        ])
        if isTitleOnTop {
            bannerStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: ViewMetrics.tripleSpace).isActive = true
        } else {
            bannerStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -ViewMetrics.tripleSpace).isActive = true
        }
    }

    func configure(with displayItem: HomeBanner) {
        bannerName.text = displayItem.iconTitle
        if let iconImage = UIImage(named: displayItem.iconImage) {
            icon.image = iconImage
        }

        if let image = UIImage(named: displayItem.image) {
            mainImage.image = image
        }
    }
}
