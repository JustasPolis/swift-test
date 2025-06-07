import FeatureOneInterface

public struct FeatureOne: FeatureOneInterface {
  public init() {}

  public func print() -> String {
    privatePrint()
  }

  private func privatePrint() -> String {
    "Hello World"
  }

  private func testing() -> Int {
    return 5
  }

  private func oneMore() -> String {
    return "Boom"
  }

  private func twoMore() -> String {
    return "Boom"
  }
}
