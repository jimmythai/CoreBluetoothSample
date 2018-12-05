//
//  ViewController.swift
//  CoreBluetoothSample
//
//  Created by Atsushi Yamamoto on 2018/12/05.
//  Copyright © 2018 Atsushi Yamamoto. All rights reserved.
//

import UIKit
import CoreBluetooth

class ViewController: UIViewController {
  
  var viewModel: ViewModel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
}

class Router {
  static func transitionToViewController() {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let bluetoothManager = BluetoothManager(centralManager: appDelegate.centralManager)
    let viewController = ViewController()
    
    viewController.viewModel = ViewModel(bluetoothManager: bluetoothManager)
  }
}

class ViewModel {
  let bluetoothManager: BluetoothManager
  
  init(bluetoothManager: BluetoothManager) {
    self.bluetoothManager = bluetoothManager
  }
}

struct BluetoothManager {
  init(centralManager: CBCentralManager) {
    
  }
}
