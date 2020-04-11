//
//  ViewGoToFlutterScreen.swift
//  ios_platform
//
//  Created by Truong Minh Thong on 4/11/20.
//  Copyright © 2020 Truong Minh Thong. All rights reserved.
//

import SwiftUI
struct ViewGoToFlutterScreen : View {
    @EnvironmentObject public var control: DrawerControl

    var body: some View {
        NavigationView {
    
            Button(action: {}) {
                Text("Go to Flutter screen")
                    .font(Font.system(size: 30))
            }
                .navigationBarTitle(Text("Single Screen Flutter"), displayMode: .automatic)
                .navigationBarItems(leading: Image("menu").onTapGesture(perform: {
                    self.control.show(type: .leftRear, isShow: true)
                }))

        }
        .foregroundColor(Color.blue)
    }
}
