//
//  SearchViewController.swift
//  AppGallery
//
//  Created by Ilya Melnikov on 06.11.2021.
//

import UIKit

class SearchViewController: UIViewController {

    private let label: UILabel = {
        let title = UILabel()

        title.font = .systemFont(ofSize: 25, weight: .regular)
        title.text = "Empty"
        title.lineBreakMode = NSLineBreakMode.byWordWrapping
        title.numberOfLines = 2
        title.textAlignment = .center

        return title
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupHierarchy()
        setupLayout()
        setupView()
    }

    // MARK: - Settings

    private func setupHierarchy() {
        view.addSubview(label)
    }

    private func setupLayout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        label.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }

    private func setupView() {
        view.backgroundColor = .systemPink
    }
}

