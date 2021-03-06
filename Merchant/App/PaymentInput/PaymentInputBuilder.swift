//
//  PaymentInputBuilder.swift
//  Merchant
//
//  Created by Jean-Baptiste Dominguez on 2018/10/18.
//  Copyright © 2018 Bitcoin.com. All rights reserved.
//

import UIKit
import BDCKit

class PaymentInputBuilder: BDCBuilder {
    
    func provide() -> UIViewController {
        let viewController = PaymentInputViewController()
        
        let getRateInteractor = GetRateInteractor()
        let router = PaymentInputRouter(viewController)
        
        let presenter = PaymentInputPresenter()
        
        presenter.getRateInteractor = getRateInteractor
        presenter.viewDelegate = viewController
        presenter.router = router
        
        viewController.presenter = presenter
        
        presenter.viewDidLoad()
        
        return viewController
    }
}
