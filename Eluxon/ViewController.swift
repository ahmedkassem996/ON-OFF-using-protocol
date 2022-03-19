//
//  ViewController.swift
//  Eluxon
//
//  Created by AHMED on 3/21/1398 AP.
//  Copyright © 1398 AHMED. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var onOffLbl: UILabel!
  @IBOutlet weak var toggleBtn: UIButton!
  
  var switchStatus: switchStatus = .off
  
  override func viewDidLoad() {
    super.viewDidLoad()
      print("")
  }

  @IBAction func toggleBtnWasPressed(_ sender: Any) {
    switchStatus.toggle()
    if switchStatus == .off{
      toggleBtn.setImage(UIImage(named: "offBtn")!, for: .normal)
      view.backgroundColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
      onOffLbl.text = "😱 OFF 😱"
      onOffLbl.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }else{
      toggleBtn.setImage(UIImage(named: "onBtn")!, for: .normal)
      view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
      onOffLbl.text = "😆 ON 😆"
      onOffLbl.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
    }
  }
  
}

