//
//  RowTypeCollectionViewCell.swift
//  AppGallery
//
//  Created by Ilya Melnikov on 06.11.2021.
//

import UIKit

class RowTypeCollectionViewCell: UICollectionViewCell {

     static let identifier = "RowTypeCollectionViewCell"

    private let separator: UIView = {
        let line = UIView()

        line.backgroundColor = .lightGray

        return line
    }()

    private let arrowImage: UIImageView = {
        let image = UIImageView()

        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.image = UIImage(systemName: "chevron.right")
        image.tintColor = .lightGray

        return image
    }()

    private let imageView: UIImageView = {
        let image = UIImageView()

        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.tintColor = .systemBlue

        return image
    }()

    private let header: UILabel = {
        let header = UILabel()

        header.font = .systemFont(ofSize: Constants.headerFontOfSize, weight: .light)
        header.textColor = .systemBlue

        return header
    }()

    private let countTitle: UILabel = {
        let count = UILabel()

        count.textColor = .gray
        count.font = .systemFont(ofSize: Constants.countTitleFontOfSize, weight: .light)

        return count
    }()

    // MARK: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    // MARK: - Settings

    private func setupHierarchy() {
        contentView.addSubview(imageView)
        contentView.addSubview(header)
        contentView.addSubview(countTitle)
        contentView.addSubview(arrowImage)
        contentView.addSubview(separator)
    }

    private func setupLayout() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: Constants.imageViewFrame).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: Constants.imageViewFrame).isActive = true

        header.translatesAutoresizingMaskIntoConstraints = false
        header.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        header.leadingAnchor.constraint(equalTo: imageView.trailingAnchor,constant: Constants.headerLeadingAnchor).isActive = true

        arrowImage.translatesAutoresizingMaskIntoConstraints = false
        arrowImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        arrowImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: Constants.arrowImageTrailingAnchor).isActive = true
        arrowImage.widthAnchor.constraint(equalToConstant: Constants.arrowImageFrame).isActive = true
        arrowImage.heightAnchor.constraint(equalToConstant: Constants.arrowImageFrame).isActive = true

        countTitle.translatesAutoresizingMaskIntoConstraints = false
        countTitle.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        countTitle.trailingAnchor.constraint(equalTo: arrowImage.leadingAnchor, constant: Constants.countTitleTrailingAnchor).isActive = true
    }

    // MARK: - Configerate

    func configure(with model: RowTypeCell) {
        imageView.image = model.icon
        header.text = model.header
        countTitle.text = model.subTitle
    }

    func createSeparator() {
        separator.translatesAutoresizingMaskIntoConstraints = false
        separator.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        separator.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        separator.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15).isActive = true
        separator.heightAnchor.constraint(equalToConstant: Constants.heigthSeparator).isActive = true
    }

    // MARK: - Constants for constraints

    enum Constants {
        static let headerFontOfSize: CGFloat = 20
        static let countTitleFontOfSize: CGFloat = 17
        static let imageViewFrame: CGFloat = 25
        static let headerLeadingAnchor: CGFloat = 15
        static let countTitleTrailingAnchor: CGFloat = -8
        static let arrowImageFrame: CGFloat = 15
        static let arrowImageTrailingAnchor: CGFloat = -40
        static let heigthSeparator: CGFloat = 0.3
    }
}

