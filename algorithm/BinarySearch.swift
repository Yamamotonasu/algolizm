import Foundation

/**
 * 2分探索モデル
 * 条件
 *  - 昇順に整列している事
 *  - O(logn)
 */
public struct BinarySearch<E> {

    var ary: Array<E>

    var calcCount: Int

    init(ary: Array<E>) {
        self.ary = ary
        self.calcCount = 0
    }

}

extension BinarySearch where E == Int {

    /**
     * - key: 探索したい整数
     * - result:
     * Not Found: return false
     * Found: return true
     */
    public mutating func searchInt(key: E) -> Bool {
        self.calcCount = 0
        var left: Int = 0
        var right: Int = ary.count
        while left < right {
            self.calcCount += 1
            let mid: Int = (left + right) / 2
            if (key == ary[mid]) {
                // キーの値を発見
                return true
            }
            if (key > ary[mid]) {
                // 後半を探索
                left = mid + 1
            } else if (key < ary[mid]) {
                // 前半を探索
                right = mid
            }
        }
        return false
    }

}

extension BinarySearch where E == String {

    /**
     * - key: 探索したい整数
     * - result:
     * Not Found: return false
     * Found: return true
     */
    public mutating func searchString(key: E) -> Bool {
        self.calcCount = 0
        var left: Int = 0
        var right: Int = ary.count
        while left < right {
            self.calcCount += 1
            let mid: Int = (left + right) / 2
            if (key == ary[mid]) {
                // キーの値を発見
                return true
            }
            if (key > ary[mid]) {
                // 後半を探索
                left = mid + 1
            } else if (key < ary[mid]) {
                // 前半を探索
                right = mid
            }
        }
        return false
    }

}
