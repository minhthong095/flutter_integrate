//
//  ViewScreenFlutter.swift
//  ios_platform
//
//  Created by Truong Minh Thong on 4/14/20.
//  Copyright © 2020 Truong Minh Thong. All rights reserved.
//

import SwiftUI
import Flutter

struct ViewScreenFlutter: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<ViewScreenFlutter>) -> UIViewController {
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        return FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<ViewScreenFlutter>) {
        
    }
    
    typealias UIViewControllerType = UIViewController

}
