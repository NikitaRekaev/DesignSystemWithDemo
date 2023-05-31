//  ArmsView.swift
//  Nikita Rekaev 30.05.2023

import UIKit
import SnapKit

public class ArmsView: UIView {

    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Resources.armsImage
        return imageView
    }()

    public override func layoutSubviews() {
        super.layoutSubviews()
        self.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.bottom.left.right.equalToSuperview()
        }
    }
}
