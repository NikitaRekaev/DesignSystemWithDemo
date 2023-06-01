//  WithLabelViewController.swift
//  Nikita Rekaev 31.05.2023

import UIKit
import DesignSystem

final class WithLabelViewController: UIViewController {
    
    // MARK: - Lifecycle

    override func loadView() {
        super.loadView()
        view = WithLabelView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setViewAppearance()
        setLabel()
    }
}

// MARK: - Private methods

private extension WithLabelViewController {

    func setViewAppearance() {
        view.backgroundColor = .yellow
        navigationController?.navigationBar.tintColor = Assets.blue.color
    }

    func setLabel() {
        let label = UILabel()
        label.text = Localizable.hello
        label.textColor = Assets.red.color
        label.font = Fonts.Inter.bold.font(size: FontSize.large)

        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(Constants.smallSide)
            make.centerX.equalToSuperview()
        }
    }
}
