//
//  NJHomeViewController.swift
//  NJDouYu
//
//  Created by HuXuPeng on 2018/5/17.
//  Copyright © 2018年 njhu. All rights reserved.
//

import UIKit
import NJKit

class NJHomeViewController: NJViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "首页"
        nj_isBackActionBtnHidden = true
    }
}

extension NJHomeViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
}
