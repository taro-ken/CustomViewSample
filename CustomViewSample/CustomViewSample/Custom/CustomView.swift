//
//  CustomView.swift
//  CustomViewSample
//
//  Created by 木元健太郎 on 2022/10/23.
//

import UIKit

@IBDesignable
class CustomView: UIView {

    var baseView: UIView?

    /// コードから生成したときに通る初期化処理
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
        self.viewDidLoad()
    }

    /// InterfaceBulderで配置した場合に通る初期化処理
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
        self.viewDidLoad()
    }

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.commonInit()
        self.viewDidLoad()
    }

    func viewDidLoad() {}

    func commonInit() {
        guard let view = UINib(nibName: String(describing: type(of: self)), bundle: Bundle(for: type(of: self))).instantiate(withOwner: self, options: nil).first as? UIView else {
            return
        }
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.addSubview(view)
        self.baseView = view
    }
}

