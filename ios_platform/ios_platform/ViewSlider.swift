//
//  ViewSlider.swift
//  ios_platform
//
//  Created by Truong Minh Thong on 4/11/20.
//  Copyright © 2020 Truong Minh Thong. All rights reserved.
//

import SwiftUI
struct SliderView : View, SliderProtocol {
    @EnvironmentObject public var drawerControl: DrawerControl
    let type: SliderType
    init(type: SliderType) {
        self.type = type
    }
    var body: some View {
        
        List {
            
            HStack {
                     Text("Single Screen Flutter")
                         .foregroundColor(.black)
                         .font(Font.system(size: 20))
                 }
                 .padding(.top, 100)
                 .onTapGesture {
                     self.drawerControl.setMain(view: ViewGoToFlutterScreen())
                     self.drawerControl.show(type: .leftRear, isShow: false)
                 }
            
            HStack {
                Text("Small View Flutter")
                    .foregroundColor(.black)
                    .font(Font.system(size: 20))
            }
            .onTapGesture {
                self.drawerControl.setMain(view: ViewGoToSmallView())
                self.drawerControl.show(type: .leftRear, isShow: false)
            }
        }
        
        
    }
}
