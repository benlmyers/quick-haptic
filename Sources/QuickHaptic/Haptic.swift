//
//  Haptic.swift
//  flowductive-lambda
//
//  Created by Ben Myers on 1/7/21.
//

import Foundation
import UIKit

/**
 Use the `Haptic` class to quickly and easily play haptic feedback on available iOS devices.
 */
@available(iOS 10.0, *)
public struct Haptic {
  
  // MARK: - Public Static Methods
  
  /**
   Plays a single haptic feedback.
   
   - parameter style: The style of the haptic feedback.
   */
  public static func play(_ style: UIImpactFeedbackGenerator.FeedbackStyle) {
    let impact = UIImpactFeedbackGenerator(style: style)
    impact.impactOccurred()
  }
  
  /**
   Plays the specified haptic feedback style twice in succession.
   
   - parameter style: The style of the haptic feedback.
   */
  public static func double(_ style: UIImpactFeedbackGenerator.FeedbackStyle) {
    double(style, style)
  }
  
  /**
   Plays two specified haptic feedback styles in succession.
   
   - parameter style1: The style of the first haptic feedback.
   - parameter style2: The style of the second haptic feedback.
   */
  public static func double(_ style1: UIImpactFeedbackGenerator.FeedbackStyle, _ style2: UIImpactFeedbackGenerator.FeedbackStyle) {
    play(style1)
    player(style2, delay: 0.1)
  }
  
  // MARK: - Private Static Methods
  
  private static func player(_ style: UIImpactFeedbackGenerator.FeedbackStyle, delay time: Double) {
    DispatchQueue.main.asyncAfter(deadline: .now() + time) {
      let impact = UIImpactFeedbackGenerator(style: style)
      impact.impactOccurred()
    }
  }
}
