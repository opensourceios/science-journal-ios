/*
 *  Copyright 2019 Google Inc. All Rights Reserved.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

import UIKit

/// A disabled version of accounts manager. Currently used by the open-source build since it does
/// not support accounts.
open class AccountsManagerDisabled: AccountsManager {
  public weak var delegate: AccountsManagerDelegate?
  public init() {}
  public var supportsAccounts: Bool { return false }
  public var currentAccount: AuthAccount? { return nil }
  public func signInAsCurrentAccount(completion: @escaping SignInBlock) {}
  public func signOutCurrentAccount() {}
  public func presentSignIn(fromViewController viewController: UIViewController,
                            completion: @escaping SignInBlock) {}
  @discardableResult public func reauthenticateCurrentAccount() -> Bool {
    return false
  }
  public func removeLingeringAccounts() {}
}