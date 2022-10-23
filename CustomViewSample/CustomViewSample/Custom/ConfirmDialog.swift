//
//  ConformDialog.swift
//  CustomViewSample
//
//  Created by 木元健太郎 on 2022/10/23.
//

import UIKit

final class ConfirmDialog: CustomView {
    @IBOutlet private weak var cancelButton: UIButton!
    @IBOutlet private weak var okButton: UIButton!
    @IBOutlet private weak var title: UILabel!
    @IBOutlet private weak var message: UILabel!
    @IBOutlet weak var dialogBaseView: UIView!
    
    private var okAction: (() -> Void)?
    private var cancelAction: (() -> Void)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dialogBaseView.layer.cornerRadius = 5
        okButton.layer.cornerRadius = 5
        cancelButton.layer.cornerRadius = 5
    }
    
    @IBAction func tappedOkButton(_ sender: UIButton) {
        self.okAction?()
        self.removeFromSuperview()
    }
    
    @IBAction func tappedCancelButton(_ sender: UIButton) {
        self.cancelAction?()
        self.removeFromSuperview()
    }
    

    
    func set(
        title: String,
        message: String,
        okButtonTitle: String,
        cancelButtonTitle: String,
        okAction: (() -> Void)?,
        cancelAction: (() -> Void)?) {
            if title == "" {
                self.title.isHidden = true
            } else {
                self.title.text = title
            }
            self.message.text = message
            self.cancelButton.setTitle(cancelButtonTitle, for: .normal)
            self.okButton.setTitle(okButtonTitle, for: .normal)
            self.okAction = okAction
            self.cancelAction = cancelAction
        }
}
