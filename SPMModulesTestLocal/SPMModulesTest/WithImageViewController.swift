//  WithImageViewController.swift
//  Nikita Rekaev 30.05.2023

import UIKit
import DesignSystem

final class WithImageViewController: UIViewController {

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setViewAppearance()
        setupImageView()
        setArmsView()
    }

}

// MARK: - Private methods

private extension WithImageViewController {

    func setViewAppearance() {
        view.backgroundColor = Assets.red.color
    }

    func setupImageView() {
        let imageView = UIImageView()
        imageView.image = Assets.arms.image

        view.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(.screenHeight / 11.6) // 70px for iPnone 13 mini
            make.size.equalTo(CGSize(width: Constants.smallSide, height: Constants.smallSide))
        }
    }

    func setArmsView() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showWithLabelController))
        let armsView = ArmsView()
        armsView.addGestureRecognizer(tapGesture)

        view.addSubview(armsView)
        armsView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.size.equalTo(CGSize(width: Constants.largeSide, height: Constants.largeSide))
        }
    }

}

// MARK: - Actions

@objc
private extension WithImageViewController {

    func showWithLabelController() {
        navigationController?.pushViewController(WithLabelViewController(), animated: true)
    }
}
