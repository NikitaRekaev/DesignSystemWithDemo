//  ArmsView.swift
//  Nikita Rekaev 30.05.2023

import UIKit

public class ArmsView: UIView {

    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Resource.armsImage
        return imageView
    }()

    public override func layoutSubviews() {
        super.layoutSubviews()
        addSubview(imageView)

        imageView.translatesAutoresizingMaskIntoConstraints = true

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor),
            imageView.leftAnchor.constraint(equalTo: self.leftAnchor),
            imageView.rightAnchor.constraint(equalTo: self.rightAnchor),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
}
