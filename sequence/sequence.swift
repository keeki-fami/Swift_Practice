// Sequence protocol

// for-in loopで各要素をiterateできる
let oneTwoThree = 1...3
for number in oneTwoThree {
    print(number)
}

// デフォルトでcontainsメソッドが実装されている
if oneTwoThree.contains(1) {print("Yes")} else {print("No")}

struct Countdown: Sequence, IteratorProtocol {
    var count: Int

    mutating func next() -> Int? {
	if count == 0 {
	    return nil
	} else {
	    defer { count -= 1 }
	    return count
	}
    }
}

let threeToGo = Countdown(count: 3)
for i in threeToGo {
    print(i)
}

// これもできる？
if oneTwoThree.contains(4) {print("Yes")} else {print("No")}

let a = 1..<100
print(a.contains(1))
print(a.contains(100))