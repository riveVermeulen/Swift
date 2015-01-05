// Playground - noun: a place where people can play

import UIKit

let height = 12; // in feet
let width = 10; // in feet

let area = height * width;

let surfaceInFt = "\(area) ft";

//Converteren naar een double
let areaInMeters = Double(area) / 10.764;
let areaInMetersNotSoAccurate = area / 10.764;

let surfaceInM = "\(areaInMeters) vierkante meter"

var x =  1 + 2;


let chairWidth = 3;
//hoeveel blijft er nog over aan onze wall
let spaceRemaining = width % chairWidth;
