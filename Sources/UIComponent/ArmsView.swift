//  ArmsView.swift
//  Nikita Rekaev 30.05.2023

import UIKit
import SnapKit

public final class ArmsView: UIView {

    lazy var imageView = makeImageView()

    public override func layoutSubviews() {
        super.layoutSubviews()
        setupView()
    }
}

// MARK: - Private methods

private extension ArmsView {

    func makeImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.image = Assets.arms.image
        return imageView
    }

    func setupView() {
        addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.bottom.left.right.equalToSuperview()
        }
    }
}

// MARK: - Preview

#if canImport(SwiftUI) && DEBUG
import SwiftUI

private class ArmsViewController: UIViewController {
    override func loadView() {
        super.loadView()
        view = ArmsView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

private struct ArmsViewControllerRepresentable: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> ArmsViewController {
        return ArmsViewController()
    }

    func updateUIViewController(_ uiViewController: ArmsViewController, context: Context) { }
}

/// For start preview Comand + Option + Enter
private struct ArmsViewControllerPreview: PreviewProvider {
    static var previews: some View {
        ArmsViewControllerRepresentable()
            .preferredColorScheme(.dark)
    }
}
#endif
