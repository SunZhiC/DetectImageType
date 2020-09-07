//
//  ViewController.swift
//  DetectImageType
//
//  Created by SuniMac on 2020/9/7.
//  Copyright © 2020 SunShine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let namesArray = ["dogdog_png.png",
    "dogdog_jpg.jpg",
    "dogdog_bmp.bmp",
    "dogdog_webp.webp",
    "smell.gif", ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        testCase1()
        print("----------------")
        testCase2()
        print("----------------")
        testCase3()
    }
    
    func testCase1() {
        for name in namesArray {
            if let data = dataWithName(name) {
                let type = Data.detectImageType(with: data)
                print("image name = \(name), type = \(type)")
            }
        }
    }
    
    func testCase2() {
        let name = "dogdog"
        if let type = Data.detectImageType(with: name) {
            print("image name = \(name), type = \(type)")
        }
    }
    
    func testCase3() {
        if let path = Bundle.main.path(forResource: "dogdog_webp", ofType: "webp") {
            let type = Data.detectImageType(with: path)
            print("image name = dogdog_webp.webp, type = \(type)")
        }
    }

    func dataWithName(_ name: String) -> Data? {
        guard let path = Bundle.main.path(forResource: name, ofType: "") else { return nil }
        let pathUrl = URL(fileURLWithPath: path)
        let data = try? Data(contentsOf: pathUrl)
        return data
    }
}

