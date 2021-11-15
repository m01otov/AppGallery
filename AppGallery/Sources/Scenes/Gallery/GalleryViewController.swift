//
//  ViewController.swift
//  AppGallery
//
//  Created by Ilya Melnikov on 06.11.2021.
//

import UIKit

class GalleryViewController: UIViewController {

    var model = Model()

    var models = [Section]()


    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupView()
        createButtonInNavBar()
        createCollectionView()
        setupCollectionView()
    }

    private func setupView() {
        view.backgroundColor = .white
        title = TabBarTitle.gallery
    }

    private func createButtonInNavBar() {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
    }

    // MARK: - Create and settings CollectionView

        private func createCollectionView() {
            model.createCollection()
            models = model.models
        }

        private func setupCollectionView() {
            let collectionView = UICollectionView(frame: .zero, collectionViewLayout: createLayout())

            collectionView.frame = self.view.frame
            collectionView.delegate = self
            collectionView.dataSource = self

            collectionView.register(CardTypeCollectionViewCell.self, forCellWithReuseIdentifier: CardTypeCollectionViewCell.identifier)
            collectionView.register(RowTypeCollectionViewCell.self, forCellWithReuseIdentifier: RowTypeCollectionViewCell.identifier)

            collectionView.register(HeaderButtonSection.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderButtonSection.identifier)
            collectionView.register(HeaderSection.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderSection.identifier)

            self.view.addSubview(collectionView)
        }

        private func createLayout() -> UICollectionViewCompositionalLayout {
            return UICollectionViewCompositionalLayout { (sectionNumber, env) -> NSCollectionLayoutSection? in
                switch sectionNumber {
                case 0: return self.createSectionFirstType()
                case 1...2: return self.createSectionSecondType()
                case 3...4: return self.createSectionThirdType()
                default: return self.createSectionThirdType()
                }
            }
        }

    // MARK: - Create LayoutSection for first section Type

    private func createSectionFirstType() -> NSCollectionLayoutSection {
        let widthHeader: CGFloat = view.frame.size.width - 20
        let heigtheader: CGFloat = 35
        let widthCell: CGFloat = (view.frame.size.width - 50) / 2
        let heigthCell: CGFloat = (view.frame.size.width - 50) + 110
        let spacing: CGFloat = 10

        let headerSize = NSCollectionLayoutSize(widthDimension: .absolute(widthHeader), heightDimension: .absolute(heigtheader))

        let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)

        let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(widthCell), heightDimension: .absolute(heigthCell))

        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(widthCell), heightDimension: .absolute(heigthCell))

        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 2)

        group.interItemSpacing = .fixed(spacing)

        let section = NSCollectionLayoutSection(group: group)

        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 20, bottom: 20, trailing: 0)
        section.boundarySupplementaryItems = [header]
        section.interGroupSpacing = spacing

        return section
    }
    // MARK: - Create LayoutSection for second section Type

    private func createSectionSecondType() -> NSCollectionLayoutSection {
        let widthHeader: CGFloat = view.frame.size.width - 20
        let heigtheader: CGFloat = 35
        let widthCell: CGFloat = (view.frame.size.width - 50) / 2
        let heigthCell: CGFloat = (view.frame.size.width - 50) / 2 + 55
        let spacing: CGFloat = 10

        let headerSize = NSCollectionLayoutSize(widthDimension: .absolute(widthHeader), heightDimension: .absolute(heigtheader))

        let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)

        let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(widthCell), heightDimension: .absolute(heigthCell))

        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(widthCell), heightDimension: .absolute(heigthCell))

        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 1)

        group.interItemSpacing = .fixed(spacing)

        let section = NSCollectionLayoutSection(group: group)

        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 20, bottom: 20, trailing: 0)
        section.boundarySupplementaryItems = [header]
        section.interGroupSpacing = spacing

        return section
    }


// MARK: - Create LayoutSection for third section Type

private func createSectionThirdType() -> NSCollectionLayoutSection {
    let widthHeader: CGFloat = view.frame.size.width - 20
    let heigtheader: CGFloat = 35
    let widthCell: CGFloat = view.frame.size.width
    let heigthCell: CGFloat = 50

    let headerSize = NSCollectionLayoutSize(widthDimension: .absolute(widthHeader), heightDimension: .absolute(heigtheader))

    let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)

    let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(widthCell), heightDimension: .absolute(heigthCell))

    let item = NSCollectionLayoutItem(layoutSize: itemSize)

    let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(widthCell), heightDimension: .absolute(heigthCell))

    let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])

    let section = NSCollectionLayoutSection(group: group)

    section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 20, bottom: 20, trailing: 0)
    section.boundarySupplementaryItems = [header]
    section.orthogonalScrollingBehavior = .none

    return section
    }
}

// MARK: - Delegate

extension GalleryViewController: UICollectionViewDelegate {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return models.count
    }
}
// MARK: - DataSource

extension GalleryViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models[section].cell.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let model = models[indexPath.section].cell[indexPath.row]

        switch model.self {
        case .imageCell(let model):
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardTypeCollectionViewCell.identifier, for: indexPath) as? CardTypeCollectionViewCell else {
                fatalError()
            }

            cell.configure(with: model)

            return cell

        case .rowCell(let model):
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RowTypeCollectionViewCell.identifier, for: indexPath) as? RowTypeCollectionViewCell else {
                fatalError()
            }

            if (model.header != TypesOfMediaCellTitle.animated) && (model.header != OtherCellTitle.recentlyDeleted) {
                cell.createSeparator()
            }

            cell.configure(with: model)

            return cell
        }
    }
}

// MARK: - DelegateFlowLayout

extension GalleryViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let model = models[indexPath.section].header

        switch model.self {
        case .header(let model):
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderSection.identifier, for: indexPath) as? HeaderSection else {
                fatalError()
            }

            header.configureHeaderSection(with: model)

            return header

        case .headerAndButton(let model):
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderButtonSection.identifier, for: indexPath) as? HeaderButtonSection else {
                fatalError()
            }

            header.configureHeaderAndButtonSection(with: model)

            return header
        }
    }
}
