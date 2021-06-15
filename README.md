
# QuickHaptic

Quickly create haptic feedback using this module.

## Installation

Use ****Swift Package Manager**** to install this package:

```swift
https://github.com/benlmyers/quick-haptic
```

## Usage

In your View or ViewController, first import `QuickHaptic`:

```swift
import QuickHaptic
```

Play a single light haptic:

```swift
Haptic.play(.light)
```

Play two soft haptics rapidly in succession:

```swift
Haptic.double(.soft)
```

Play a heavy haptic, then a medium haptic:

```swift
Haptic.double(.heavy, .medium)
```

### Haptic Styles

QuickHaptic supports every type of `FeedbackStyle` offered.

**Available Styles:**

- heavy
- light
- medium
- rigid
- soft
