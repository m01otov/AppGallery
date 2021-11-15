//
//  HeaderSection.swift
//  AppGallery
//
//  Created by Ilya Melnikov on 06.11.2021.
//

import UIKit

 class HeaderSection: UICollectionReusableView {

     static let identifier = "HeaderButtonSection"

     private let header: UILabel = {
              let label = UILabel()

              label.font = .systemFont(ofSize: Constants.fontOfSize, weight: .bold)
              label.textColor = .black

              return label
          }()

          private let separator: UIView = {
              let sep = UIView()

              sep.backgroundColor = .lightGray

              return sep
          }()

          // MARK: - Lifecycle

          override init(frame: CGRect) {
              super.init(frame: frame)

              setupHierarchy()
              setupLayout()
              setupView()
          }

          required init?(coder: NSCoder) {
              fatalError()
          }

          // MARK: - Settings

          private func setupHierarchy() {
              addSubview(header)
              addSubview(separator)
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
          }

          private func setupView() {
              backgroundColor = .clear
          }

          // MARK: - Configurete

          func configureHeaderSection(with model: HeaderTitle) {
              header.text = model.title
          }

          // MARK: - Constants for constraints

          enum Constants {
              static let fontOfSize: CGFloat = 20
              static let heigthSeparator: CGFloat = 0.3
          }
      }


