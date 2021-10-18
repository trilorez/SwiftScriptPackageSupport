import Foundation

public struct Thing: Codable {

    public var x: Int
    public var y: [String]
    public var z: [String: Int]

    @discardableResult
    public init(x: Int = 0, y: [String] = [], z: [String: Int] = [:]) {
        self.x = x
        self.y = y
        self.z = z

        encodeIfRequested(self)
    }
}

func encodeIfRequested<T: Codable>(_ value: T) {
    guard ProcessInfo.processInfo.arguments.contains("--encode") else { return }
    let data = try! JSONEncoder().encode(value)
    // TODO: Write to file
    print(String(data: data, encoding: .utf8)!)
}
