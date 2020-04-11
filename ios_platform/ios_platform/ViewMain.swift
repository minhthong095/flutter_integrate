//
//  ContentView.swift
//  ios_platform
//
//  Created by Truong Minh Thong on 4/11/20.
//  Copyright © 2020 Truong Minh Thong. All rights reserved.
//

import SwiftUI

struct ViewContent : View {
    var body: some View {
        Drawer()
            .setSlider(view: SliderView(type: .leftRear))
            .setMain(view: ViewGoToFlutterScreen())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ViewContent()
    }
}
