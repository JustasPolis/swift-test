@_exported import FeatureOneInterface

public protocol AppDependencies {
  var featureOne: () -> FeatureOneInterface { get }
}
