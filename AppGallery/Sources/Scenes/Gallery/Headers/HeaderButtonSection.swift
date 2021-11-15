//
//  HeaderButtonSection.swift
//  AppGallery
//
//  Created by Ilya Melnikov on 06.11.2021.
//

import UIKit

class HeaderButtonSection: UICollectionReusableView {

     static let identifier = "HeaderButtonSection"

     private let header: UILabel = {
         let label = UILabel()

         label.font = .systemFont(ofSize: Constants.headerFontOfSize, weight: .bold)
         label.textColor = .black

         return label
     }()

     private let separator: UIView = {
         let sep = UIView()

         sep.backgroundColor = .lightGray

         return sep
     }()

     private let button: UIButton = {
         let button = UIButton(type: .system, primaryAction: .none)

         button.titleLabel?.font = .systemFont(ofSize: Constants.buttonFontOfSize, weight: .regular)
         button.titleLabel?.textColor = .systemBlue

         return button
     }()

     // MARK: - Lifecycle

     override init(frame: CGRect) {
         super.init(frame: frame)

         setupHierarchy()
         setupView()
         setupLayout()
     }

     required init?(coder: NSCoder) {
         fatalError()
     }

     // MARK: - Settings

     private func setupHierarchy() {
         addSubview(header)
         addSubview(separator)
         addSubview(button)
     }

     private func setupLayout() {
         separator.translatesAutoresizingMaskIntoConstraints = false
         separator.topAnchor.constraint(equalTo: topAnchor).isActive = true
         separator.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
         separator.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
         separator.heightAnchor.constraint(equalToConstant: Constants.heigthSeparator).isActive = true

         header.translatesAutoresizingMaskIntoConstraints = false
         header.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
         header.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

         button.translatesAutoresizingMaskIntoConstraints = false
         button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: Constants.buttonTrailingAnchor).isActive = true
         button.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
         button.heightAnchor.constraint(equalToConstant: Constants.heigthButton).isActive = true
     }

     private func setupView() {
         backgroundColor = .clear
     }

     // MARK: - Configurete

     func configureHeaderAndButtonSection(with model: HeaderAndButton) {
         header.text = model.title
         button.setTitle(model.titleButton, for: .normal)
     }

     // MARK: - Constants for constraints

     enum Constants {
         static let headerFontOfSize: CGFloat = 20
         static let buttonFontOfSize: CGFloat = 17
         static let heigthSeparator: CGFloat = 0.3
         static let heigthButton: CGFloat = 17
         static let buttonTrailingAnchor: CGFloat = -20
     }
 }
