//
//  CardTypeCollectionViewCell.swift
//  AppGallery
//
//  Created by Ilya Melnikov on 06.11.2021.
//

import UIKit

class CardTypeCollectionViewCell: UICollectionViewCell {

     static let identifier = "CardTypeCollectionViewCell"

     private let imageView: UIImageView = {
         let image = UIImageView()

         image.contentMode = .scaleAspectFill
         image.clipsToBounds = true

         return image
     }()

     private let header: UILabel = {
         let header = UILabel()

         header.font = .systemFont(ofSize: Constants.headerFontOfSize, weight: .light)

         return header
     }()

     private let subTitle: UILabel = {
         let count = UILabel()

         count.textColor = .gray
         count.font = .systemFont(ofSize: Constants.subTitleFontOfSize, weight: .light)

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
         contentView.addSubview(subTitle)
     }

     private func setupLayout() {
         imageView.translatesAutoresizingMaskIntoConstraints = false
         imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
         imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
         imageView.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
         imageView.heightAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
         imageView.layer.cornerRadius = Constants.cornerRadius

         header.translatesAutoresizingMaskIntoConstraints = false
         header.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: Constants.headerTopAnchor).isActive = true
         header.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true

         subTitle.translatesAutoresizingMaskIntoConstraints = false
         subTitle.topAnchor.constraint(equalTo: header.bottomAnchor).isActive = true
         subTitle.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
     }

     // MARK: - Configurate

     func configure(with model: CardTypeCell) {
         imageView.image = model.icon
         header.text = model.header
         subTitle.text = model.countTitle
     }

     // MARK: - Constants for constraints

     enum Constants {
         static let headerFontOfSize: CGFloat = 17
         static let subTitleFontOfSize: CGFloat = 17
         static let cornerRadius: CGFloat = 8
         static let headerTopAnchor: CGFloat = 5
     }
 }
