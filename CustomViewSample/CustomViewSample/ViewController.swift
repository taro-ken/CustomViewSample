//
//  ViewController.swift
//  CustomViewSample
//
//  Created by 木元健太郎 on 2022/10/23.
//

import UIKit

final class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tappedDialogButton(_ sender: Any) {
        // ここでダイアログを呼び出し
        self.showConfirmDialog(
            title: "サンプル", message: "これはサンプルです", cancelButtonTitle: "キャンセル", okButtonTitle: "OK",
            okAction: {
                print("OK")
            },cancelAction: {
                print("キャンセルしました")
            })
    }
}
