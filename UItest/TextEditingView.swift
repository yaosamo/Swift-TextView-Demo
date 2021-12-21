//
//  TextEditingView.swift
//  UItest
//
//  Created by Yaroslav Samoylov on 12/14/21.
//

import SwiftUI


extension NSTextView {
  open override var frame: CGRect {
    didSet {
        // Top inset
        textContainerInset = NSSize(width: 0, height: 72)
        // Left fragment padding
        textContainer?.lineFragmentPadding = 72
        }
    }
}


struct TextEditingView: View {
    @State private var fullText: String = "One \nTwo \nThree"


    var body: some View {
        TextEditor(text: $fullText)
            .frame(width: 720, height: 480)
            .font(.system(size: 24, design: .monospaced))
            

        }

    }


