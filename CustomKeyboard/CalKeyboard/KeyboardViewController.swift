//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var returnKeyboardButton: UIButton!
    @IBOutlet var deleteKeyboardButton: UIButton!
    @IBOutlet var yasKeyboardButton: UIButton!
    @IBOutlet var mamaKeyboardButton: UIButton!
    @IBOutlet var slayKeyboardButton: UIButton!
    @IBOutlet var twerkKeyboardButton: UIButton!
    @IBOutlet var dabKeyboardButton: UIButton!
    @IBOutlet var ayKeyboardButton: UIButton!
    @IBOutlet var voomKeyboardButton: UIButton!
    @IBOutlet var getitKeyboardButton: UIButton!
    @IBOutlet var killitKeyboardButton: UIButton!
    @IBOutlet var bobaKeyboardButton: UIButton!
    @IBOutlet var countKeyboardButton: UIButton!
    @IBOutlet var dopeswagKeyboardButton: UIButton!
    @IBOutlet var boomKeyboardButton: UIButton!
    @IBOutlet var bassKeyboardButton: UIButton!
    @IBOutlet var tickKeyboardButton: UIButton!
    @IBOutlet var werkKeyboardButton: UIButton!
    @IBOutlet var spaceKeyboardButton: UIButton!
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        returnKeyboardButton.addTarget(self, action: "returnAction", forControlEvents: .TouchUpInside)
        deleteKeyboardButton.addTarget(self, action: "deleteAction", forControlEvents: .TouchUpInside)
        yasKeyboardButton.addTarget(self, action: "yas", forControlEvents: .TouchUpInside)
        mamaKeyboardButton.addTarget(self, action: "mama", forControlEvents: .TouchUpInside)
        slayKeyboardButton.addTarget(self, action: "slay", forControlEvents: .TouchUpInside)
        twerkKeyboardButton.addTarget(self, action: "twerk", forControlEvents: .TouchUpInside)
        dabKeyboardButton.addTarget(self, action: "dab", forControlEvents: .TouchUpInside)
        ayKeyboardButton.addTarget(self, action: "ay", forControlEvents: .TouchUpInside)
        voomKeyboardButton.addTarget(self, action: "voom", forControlEvents: .TouchUpInside)
        getitKeyboardButton.addTarget(self, action: "getit", forControlEvents: .TouchUpInside)
        killitKeyboardButton.addTarget(self, action: "killit", forControlEvents: .TouchUpInside)
        bobaKeyboardButton.addTarget(self, action: "boba", forControlEvents: .TouchUpInside)
        countKeyboardButton.addTarget(self, action: "count", forControlEvents: .TouchUpInside)
        dopeswagKeyboardButton.addTarget(self, action: "dopeswag", forControlEvents: .TouchUpInside)
        boomKeyboardButton.addTarget(self, action: "boom", forControlEvents: .TouchUpInside)
        tickKeyboardButton.addTarget(self, action: "tick", forControlEvents: .TouchUpInside)
        werkKeyboardButton.addTarget(self, action: "werk", forControlEvents: .TouchUpInside)
        spaceKeyboardButton.addTarget(self, action: "space", forControlEvents: .TouchUpInside)
        bassKeyboardButton.addTarget(self, action: "bass", forControlEvents: .TouchUpInside)

    }
    
    func returnAction(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("\n")
    }
    
    func deleteAction(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.deleteBackward()
    }
    
    func yas(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("YAAAAAS")
    }
    
    func mama(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("MAMA")
    }
    
    func slay(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("SLAAAYYYYY")
    }
    
    func twerk(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("TWEERRKKKK")
    }
    
    func dab(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("DAB")
    }
    
    func ay(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("AYYYYYYYY")
    }
    
    func voom(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("VOOOOOOM")
    }
    
    func getit(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("GEEEET IT")
    }
    
    func killit(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("KILLLL IT")
    }
    
    func boba(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("BOBAAAAAAAA")
    }
    
    func dopeswag(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("DOPESWAAAAG")
    }
    
    func boom(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("BOOM")
    }
    
    func count(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("5678")
    }
    
    func tick(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("TICK")
    }
    
    func werk(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("WEEEEERKKKKKK")
    }
    
    func space(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText(" ")
    }
    
    func bass(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("BASS")
    }


}
