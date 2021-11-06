//
//  ModelSections.swift
//  AppGallery
//
//  Created by Ilya Melnikov on 06.11.2021.
//

import UIKit

 struct CardTypeCell {
     let header: String
     let icon: UIImage?
     let countTitle: String
 }

 struct RowTypeCell {
     let header: String
     let icon: UIImage?
     let subTitle: String
 }

 enum SectionCellType {
     case imageCell(model: CardTypeCell)
     case rowCell(model: RowTypeCell)
 }

 struct Section {
     let header: Header
     let cell: [SectionCellType]
 }

 struct HeaderAndButton {
     let title: String
     let titleButton: String
 }

 struct HeaderTitle {
     let title: String
 }

 enum Header {
     case headerAndButton(model: HeaderAndButton)
     case header(model: HeaderTitle)
 }
