//
//  BoardFoot.swift
//
//  Created by Spencer Scarlett
//  Created on 2024-Mar-19
//  Version 1.0
//  Copyright (c) 2024 Spencer Scarlett. All rights reserved.
//
//  Calculates the board foot length

// Important module
import Foundation

// constant for the board size
let VOLUME: Float = 144

// this function is for the calculations of the length of the board.
func calcLength(widthFLT: Float, heightFLT: Float) -> Float {
    // calculations for length
    let length = VOLUME / (widthFLT * heightFLT)

    // returns length to main
    return length
}

// this is the main function that contains input, and output
func main() {
    // opening statement and input message.
    print("Enter the width value(inches): ")
    let widthSTR = readLine() ?? ""

    // try catch for width input
    if let widthFLT = Float(widthSTR) {
        // checks if input is less or zero
        if widthFLT <= 0 {
            print("Width can't be 0 or a negative number!")

            // if input is ready, move to height input
        } else {
            // input statement for height
            print("Enter the height value(inches): ")
            let heightSTR = readLine() ?? ""

            // try catch for height input
            if let heightFLT = Float(heightSTR) {
                // if height is 0 or less
                if heightFLT <= 0 {
                    print("Height can't be 0 or a negative number!")
                } else {
                    // imports length from above function
                    let length = calcLength(widthFLT: widthFLT, heightFLT: heightFLT)

                    // displays length
                    print("The wood should be \(length) inch(es) long")
                }
            }
            // for invalid height inputs
            else {
                print("Invalid height inputted. Input must be a number greater than 0")
            }
        }
    }
    // for invalid width inputs
    else {
        print("Invalid width inputted. Input must be a number greater than 0")
    }
}

// Call the main function to start the program
main()
