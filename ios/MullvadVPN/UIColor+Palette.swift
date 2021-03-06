//
//  UIColor+Palette.swift
//  MullvadVPN
//
//  Created by pronebird on 20/03/2019.
//  Copyright © 2019 Mullvad VPN AB. All rights reserved.
//

import UIKit

extension UIColor {

    enum AccountTextField {
        enum NormalState {
            static let borderColor = secondaryColor
            static let textColor = primaryColor
            static let backgroundColor = UIColor.white
        }

        enum ErrorState {
            static let borderColor = dangerColor.withAlphaComponent(0.4)
            static let textColor = dangerColor
            static let backgroundColor = UIColor.white
        }

        enum AuthenticatingState {
            static let borderColor = UIColor.clear
            static let textColor = UIColor.white
            static let backgroundColor = UIColor.white.withAlphaComponent(0.2)
        }
    }

    // Relay availability indicator view
    enum RelayStatusIndicator {
        static let activeColor = successColor.withAlphaComponent(0.9)
        static let inactiveColor = dangerColor.withAlphaComponent(0.95)
    }

    // Cells
    enum Cell {
        static let backgroundColor = primaryColor
        static let disabledBackgroundColor = backgroundColor.darkened(by: 0.3)!

        static let selectedBackgroundColor = successColor
        static let disabledSelectedBackgroundColor = selectedBackgroundColor.darkened(by: 0.3)!

        static let selectedAltBackgroundColor = backgroundColor.darkened(by: 0.2)!
    }

    enum SubCell {
        static let backgroundColor = namedColor("SubCell")
        static let disabledBackgroundColor = backgroundColor.darkened(by: 0.3)!
    }

    enum SubSubCell {
        static let backgroundColor = namedColor("SubSubCell")
        static let disabledBackgroundColor = backgroundColor.darkened(by: 0.3)!
    }

    enum HeaderBar {
        static let defaultBackgroundColor = primaryColor
        static let unsecuredBackgroundColor = dangerColor
        static let securedBackgroundColor = successColor
    }

    // Common colors
    static let primaryColor = namedColor("Primary")
    static let secondaryColor = namedColor("Secondary")
    static let dangerColor = namedColor("Danger")
    static let successColor = namedColor("Success")
}

/// This is a helper function to access named colors from the main bundle and circumvent storyboard
/// crash.
/// See: https://openradar.appspot.com/47113341
private func namedColor(_ name: StringLiteralType) -> UIColor {
    UIColor(named: name, in: Bundle(for: AppDelegate.self), compatibleWith: nil)!
}
