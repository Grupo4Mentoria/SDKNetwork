//
//  ViewController.swift
//  SDKNetwork
//
//  Created by Cesar Silva on 29/08/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        provider.getThemeComponentById(id: 1) { result in
            switch result {
            case .success(let success):
                print(success)
            case .failure(let failure):
                print(failure)
            }
        }
    }
    
    let provider = ThemeComponentProvider()


}

