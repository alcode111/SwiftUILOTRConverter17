//
//  CurrencyTip.swift
//  SwiftUILOTRConverter17
//
//  Created by Ismaïl LP on 04/04/2024.
//

import Foundation
import TipKit

struct CurrencyTip: Tip {
    var title: Text = Text("Change Currency")
    
    var message: Text? = Text("You can tap the left or right currency to bring up the Select Currency screen")
}
