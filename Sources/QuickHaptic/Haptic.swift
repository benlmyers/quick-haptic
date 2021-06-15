//
//  Haptic.swift
//  flowductive-lambda
//
//  Created by Ben Myers on 1/7/21.
//

import Foundation
import UIKit

@available(iOS 10.0, *)
public struct Haptic {
  
  public static func play(_ style: UIImpactFeedbackGenerator.FeedbackStyle) {
    let impact = UIImpactFeedbackGenerator(style: style)
    impact.impactOccurred()
  }
  
  public static func double(_ style: UIImpactFeedbackGenerator.FeedbackStyle) {
    double(style, style)
  }
  
  public static func double(_ style1: UIImpactFeedbackGenerator.FeedbackStyle, _ style2: UIImpactFeedbackGenerator.FeedbackStyle) {
    play(style1)
    player(style2, delay: 0.1)
  }
  
  public static func player(_ style: UIImpactFeedbackGenerator.FeedbackStyle, delay time: Double) {
    DispatchQueue.main.asyncAfter(deadline: .now() + time) {
      let impact = UIImpactFeedbackGenerator(style: style)
      impact.impactOccurred()
    }
  }
}
