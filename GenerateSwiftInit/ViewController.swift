//
//  ViewController.swift
//  GenerateSwiftInit
//
//  Created by Brandon Kobilansky on 6/13/16.
//  Copyright © 2016 Brandon Kobilansky. All rights reserved.
//

import Cocoa

import SwiftGenerator

class ViewController: NSViewController {

    @IBOutlet var inputTextView: NSTextView!
    @IBOutlet var outputTextView: NSTextView!

    @IBAction func generate(_ sender: AnyObject) {
        let lines = inputTextView.string

        let initializer = generateInit(lines: lines.components(separatedBy: "\n"))

        outputTextView.string = initializer
    }
}

