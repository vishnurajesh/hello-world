//
//  ViewController.swift
//  Learning Swift
//
//  Created by Vishnu Rajesh on 05/06/18.
//  Copyright © 2018 Vishnu Rajesh. All rights reserved.
//

import UIKit
class MyStruct
{
    let x : Int ;
    var y : Int = 0

    var z : Int
    {
        get
        {
            return 5;
        }
        set
        {
            print("Prinitng)")
            y = newValue/2;
        }
    }

    convenience init()
    {
        self.init(argumentName: 6)
    }

    init(argumentName parameterName : Int)
    {
        x = parameterName;
    }
    func returnvalue() -> Int
    {
        return 5;
    }

    func clouserasarg(cl : (Int) -> Int) -> Int
    {
        let c : Int = cl(6)
        print("c = \(c)")
        return 5;
    }

    func changeValues()
    {

        let testvar : Int? = 10
        let newvar = testvar!
        if  newvar == 10
        {
            print("Contains value")
        }
        else
        {
            print("no value ");
        }

        y = y + 13
    }
    func printingValues()
    {
        print("X - \(x) Y - \(y) Z \(z) ")
    }
}

class ViewController: UIViewController
{
    var myVar : MyStruct? = nil;

    override func viewDidLoad()
    {
        super.viewDidLoad()

        func nF ( k : Int) -> (Int)
        {
            print("inside func");
            return 2
        }

        let myfuncvar : (Int) -> (Int) = nF
        myVar = MyStruct();

         myVar?.clouserasarg(cl: myfuncvar)


    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

