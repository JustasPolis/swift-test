//
//  Dependencies.swift
//  swift-package-test
//
//  Created by Justas Polikevicius on 6/7/25.
//
import Dependencies
import FeatureOne
import FeatureOneInterface

struct AppDependenciesImpl: AppDependencies {
  let featureOne: () -> FeatureOneInterface = {
    return FeatureOne()
  }
}
