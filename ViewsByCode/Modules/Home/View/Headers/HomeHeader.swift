//
//  HomeHeader.swift
//  ViewsByCode
//
//  Created by Javier Castañeda on 29/04/21.
//

import UIKit

final class HomeHeader: UICollectionReusableView {

    private let titleLabel: UILabel = {
        let label = UILabel(style: .headerTitle)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let subtitleLabel: UILabel = {
        let label = UILabel(style: .headerSubtitle)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let actionButton: UIButton = {
        let button = UIButton(style: .link)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private let bottomStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = ViewMetrics.singleSpace
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    private let mainStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = .zero
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
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
        bottomStack.addArrangedSubview(subtitleLabel)
        bottomStack.addArrangedSubview(actionButton)

        mainStack.addArrangedSubview(titleLabel)
        mainStack.addArrangedSubview(bottomStack)
        addSubview(mainStack)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            actionButton.widthAnchor.constraint(lessThanOrEqualToConstant: 90),
            mainStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: ViewMetrics.doubleSpace),
            mainStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -ViewMetrics.doubleSpace),
            mainStack.topAnchor.constraint(equalTo: topAnchor, constant: ViewMetrics.doubleSpace),
            mainStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            actionButton.trailingAnchor.constraint(equalTo: mainStack.trailingAnchor)
        ])
    }

    func configure(title: String? = .none, subtitle: String? = .none, buttonTitle: String? = .none) {
        titleLabel.isHidden = title == nil
        subtitleLabel.isHidden = subtitle == nil
        actionButton.isHidden = buttonTitle == nil

        titleLabel.text = title
        subtitleLabel.text = subtitle
        actionButton.setTitle(buttonTitle, for: .normal)
    }
}
