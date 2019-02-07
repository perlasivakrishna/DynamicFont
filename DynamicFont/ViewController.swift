//
//  ViewController.swift
//  DynamicFont
//
//  Created by Siva Krishna on 07/02/19.
//  Copyright © 2019 Siva Krishna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fontTestLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector (self.cotentSizeChange), name: UIContentSizeCategory.didChangeNotification, object: nil)
        self.cotentSizeChange()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func cotentSizeChange(){
       // let font = UIFont.preferredFont(forTextStyle: .body)  use this directly if we are using sysem fonts  
        let fontmetrics = UIFontMetrics(forTextStyle: .body)
        let preferfont = fontmetrics.scaledFont(for: UIFont.SourceSansProBold(17))
        fontTestLabel.font = preferfont
    }

    

}

extension UIFont {
    
    static func SourceSansProRegular(_ size:CGFloat) -> UIFont{
        return UIFont(name: "SourceSansPro-Regular", size: size)!
    }
    
    static func SourceSansProBold(_ size:CGFloat) -> UIFont{
        return UIFont(name: "SourceSansPro-Bold", size: size)!
    }
    
    static func SourceSansProSemiBold(_ size:CGFloat) -> UIFont{
        return UIFont(name: "SourceSansPro-Semibold", size: size)!
    }
    
}
