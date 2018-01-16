import Foundation

//: Playground - noun: a place where people can play
let array: [Int] = [1,2,3,4,5]

// 각 어레이의 제곱의 합을 구하시오
var sumofsquare = 0
for item in array{
    sumofsquare += item * item
}
//print(sumofsquare)

print(array.reduce(0){ $0 + $1*$1 })

// 어레이 총합의 제곱을 구하시오
var squareofsum = 0
var lklk = 0
for item in array{
    lklk += item
    squareofsum = lklk * lklk
}
//print(squareofsum)

print(pow(Decimal(array.reduce(0){$0 + $1}), 2))

// 1부터 100까지의 숫자들 가운데 3으로 나누어 떨어지면서 6으로는 나누어떨어지지 않는 배열을 구해주세요
var array1 : Array<Int> = []
for j in 1...100 {
    array1.append(j)
}

var array2 : Array<Int> = []
for i in array1 {
    if i % 3 == 0 && i % 6 != 0 {
        array2.append(i)
    }
}
//print(array2)

print(array1.filter{$0 % 3 == 0 && $0 % 6 != 0})


//어레이의 분산을 구하시오( 제곱의 평균- 평균의 제곱)
var rms = 0
var sumofsq = 0
var total = 0
for item in array{
    total += item
    sumofsq += item * item
    rms = (sumofsq / array.count) - (total / array.count)*(total / array.count)
    
}
// print(rms)

print((array.reduce(0){$0 + $1 * $1} / array.count) - (array.reduce(0){$0 + $1} / array.count * array.reduce(0){$0 + $1} / array.count))


// 베짱이는 2018년 1월 한달간 월화수는 8시 50분에 일어나서 수업에 지각하였고 목금토일은 11시에 일어나서 수업에 가지 못하였습니다. 베짱이가 1월 한달간 수업에 지각한 횟수를 구해주세요
var array3 : Array<Int> = []
for j in 1...31 {
    array3.append(j)
}

var array4 : Array<Int> = []
for i in array3 {
    if i % 7 == 1 || i % 7 == 2 || i % 7 == 3 {
        array4.append(i)
    }
}

var LateNumber = array4.count

// print(LateNumber)

print(array3.filter{$0 % 7 == 1 || $0 % 7 == 2 || $0 % 7 == 3}.count)

