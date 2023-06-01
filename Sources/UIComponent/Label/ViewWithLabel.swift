//  ViewWithLabel.swift
//  Nikita Rekaev 31.05.2023

import UIKit

public final class WithLabelView: UIView {

    private lazy var label = makeLabel()

    public override func layoutSubviews() {
        super.layoutSubviews()
        setupView()
    }
}

// MARK: - Private methods

private extension WithLabelView {

    func makeLabel() -> UILabel {
        let label = UILabel()
        label.attributedText = makeAttributedTextForLabel()
        label.numberOfLines = 0
        return label
    }

    func makeAttributedTextForLabel() -> NSMutableAttributedString {
        let boldAttribute = NSAttributedString(string: Localizable.hello, attributes: [
            .font: Fonts.Inter.bold.font(size: 20),
            .foregroundColor: Assets.blue.color
        ])

        let regularAttribute = NSAttributedString(string: Localizable.bye, attributes: [
            .font: Fonts.Inter.regular.font(size: 20),
            .foregroundColor: Assets.red.color
        ])

        let attributed = NSMutableAttributedString()
        attributed.append(boldAttribute)
        attributed.append(NSAttributedString(string: "\n"))
        attributed.append(regularAttribute)
        return attributed
    }

    func setupView() {
        addSubview(label)

        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}

// MARK: - Preview

#if canImport(SwiftUI) && DEBUG
import SwiftUI

private class WithLabelViewController: UIViewController {
    override func loadView() {
        super.loadView()
        view = WithLabelView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
}

private struct WithLabelViewControllerRepresentable: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> WithLabelViewController {
        return WithLabelViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }

}

/// For start preview Comand + Option + Enter
private struct WithLabelViewControllerPreview: PreviewProvider {
    static var previews: some View {
        WithLabelViewControllerRepresentable()
            .preferredColorScheme(.dark)
    }
}

#endif
