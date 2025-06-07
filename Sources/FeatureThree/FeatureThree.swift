import Dependencies
import FeatureOneInterface

public struct FeatureThree {

  let featureOne: FeatureOneInterface

  public init(dependencies: AppDependencies) {
    self.featureOne = dependencies.featureOne()
  }

  public func fromFeatureOne() -> String {
    return featureOne.print()
  }
}


