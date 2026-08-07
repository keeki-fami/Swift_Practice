# Sequence
link - https://developer.apple.com/documentation/swift/sequence
## memo
1. for-in loopを使って要素を取り出せる
```
let a = 1...100
for i in a {
	print(i)
}
```

2. `contains`メソッドを標準実装している。
```
let a = 1..<100
print(a.contains(1)) // true
print(a.contains(100)) // false
```

3. Sequenceを使用してカスタムタイプを実装する
	1. iteratorを返すような、Iteratorメソッドを実装する
	2. IteratorProtocolも準拠させ、nextメソッドを実装 ← ドキュメントで解説
