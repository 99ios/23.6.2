//: Playground - noun: a place where people can play

import UIKit

/******************1.if语句********************/
let five = 5
if five < 5 {
    print("小于5")
}else if five > 5{
    print("大于5")
}else{
    print("等于5")
}
//打印结果：等于5


/****************2.switch语句******************/
let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("26个字母的首字母")
case "z":
    print("26个字母的尾字母")
default:
    print("其他字符")
}
//打印结果 "26个字母的尾字母"

let anotherCharacter: Character = "a"
switch anotherCharacter {
//case "a": // 这里会报错，因为这个case语句没有执行体
case "A":
    print("字符A")
default:
    print("不是字符A")
}



let approximateCount = 51
var chineseStr: String
switch approximateCount {
case 0:
    chineseStr = "零"
case 1..<10:
    chineseStr = "个"
case 10..<100:
    chineseStr = "十"
case 100..<1000:
    chineseStr = "百"
default:
    chineseStr = "未知"
}
print("\(approximateCount)最高位是\(chineseStr)位")
//打印结果：51最高位是十位


let pos = (-1,1)
switch pos {
case (_,0):
    print("(\(pos.0),\(pos.1))在X轴上")
case (0,_):
    print("(\(pos.0),\(pos.1))在Y轴上")
case (-2...2,-2...2):
    print("(\(pos.0),\(pos.1))在矩形(-2,2),(-2,2)区域之内")
default:
    print("(\(pos.0),\(pos.1))在矩形(-2,2),(-2,2)区域之外")
}
//打印结果：(-1,1) 在矩形(-2,2),(-2,2)区域之内


let anotherPoint = (0, 1)
switch anotherPoint {
case (let x, 0):
    print("在X轴上，且x的值是\(x)")
case (0, let y):
    print("在Y轴上，且y的值是\(y)")
case let (x, y):
    print("在其他地方 (\(x), \(y))")
}
// 打印结果：在Y轴上，且y的值是1


let anotherPoint1 = (1, -1)
switch anotherPoint1 {
case (let x,let y) where x==y:
    print("(\(x),\(y))在直线x=y上")
case (let x, let y) where x == -y:
    print("(\(x),\(y))在直线x=-y上")
case let (x, y):
    print("在其他地方 (\(x), \(y))")
}
// 打印结果：(1,-1)在直线x=-y上
