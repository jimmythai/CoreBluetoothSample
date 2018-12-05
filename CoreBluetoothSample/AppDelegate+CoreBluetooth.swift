//
//  AppDelegate+CoreBluetooth.swift
//  CoreBluetoothSample
//
//  Created by Atsushi Yamamoto on 2018/12/05.
//  Copyright © 2018 Atsushi Yamamoto. All rights reserved.
//

import Foundation
import CoreBluetooth

extension AppDelegate: CBCentralManagerDelegate {
    
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        switch central.state {
        case .unknown:
            print("central.state is .unknown")
        case .resetting:
            print("central.state is .resetting")
        case .unsupported:
            print("central.state is .unsupported")
        case .unauthorized:
            print("central.state is .unauthorized")
        case .poweredOff:
            print("central.state is .poweredOff")
        case .poweredOn:
            print("central.state is .poweredOn")
        }
    }
    
}

extension AppDelegate: CBPeripheralDelegate {
    
}
