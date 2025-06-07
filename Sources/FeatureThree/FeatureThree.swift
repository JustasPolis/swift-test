import FeatureOneInterface

public struct FeatureThree {

  let featureOne: FeatureOneInterface

  public init(featureOne: FeatureOneInterface) {
    self.featureOne = featureOne
  }

  public func fromFeatureOne() -> String {
    return featureOne.print()
  }
}


