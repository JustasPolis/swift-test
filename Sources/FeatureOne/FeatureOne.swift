import FeatureOneInterface

public struct FeatureOne: FeatureOneInterface {
  public init() {}

  public func print() -> String {
    testing()
  }

  private func privatePrint() -> String {
    "Hello World"
  }
}
