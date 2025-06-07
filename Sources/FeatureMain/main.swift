import FeatureOne
import FeatureThree

let test = FeatureThree(dependencies: AppDependenciesImpl())

print(test.fromFeatureOne())
