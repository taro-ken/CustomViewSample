//
//  UIViewController+.swift
//  CustomViewSample
//
//  Created by 木元健太郎 on 2022/10/23.
//

import UIKit

extension UIViewController {
  /// 確認用ダイアログ
  func showConfirmDialog(
    title: String,
    message: String,
    cancelButtonTitle: String,
    okButtonTitle: String,
    okAction: (() -> Void)? = nil,
    cancelAction: (() -> Void)? = nil
  ) {
    let confirmDialog = ConfirmDialog(frame: self.view.frame)
    confirmDialog.set(title: title, message: message, okButtonTitle: okButtonTitle, cancelButtonTitle: cancelButtonTitle, okAction: okAction, cancelAction: cancelAction)
    self.view.addSubview(confirmDialog)
  }
}
