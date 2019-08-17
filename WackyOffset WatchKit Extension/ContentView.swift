//
//  ContentView.swift
//  WackyOffset WatchKit Extension
//
//  Created by Will Bishop on 17/8/19.
//  Copyright © 2019 Will Bishop. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Given a list of random length, and a height of random length, `List` objects do not scroll properly. You'll observe that the list-snapping either snaps to the wrong part of a cell, snaps completely past the cell and to the next one, or doesn't snap at all. This is a SwiftUI bug *but*, if you can find a work around, please let me know.
        List(0 ... Int.random(in: 1 ... 50)){item in
            Rectangle()
                .frame(height: CGFloat.random(in: 50 ... 300.0))
                .foregroundColor(Color(red: Double.random(in: 0.0 ... 1.0), green: Double.random(in: 0.0 ... 1.0), blue: Double.random(in: 0.0 ... 1.0)))
        }
        
    }
}

extension Int: Identifiable{
    public var id: String {return String(self)}
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
