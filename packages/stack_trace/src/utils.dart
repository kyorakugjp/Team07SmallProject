// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:path/path.dart' as p;

/// The line used in the string representation of stack chains to represent
/// the gap between traces.
const chainGap = '===== asynchronous gap ===========================\n';

// TODO(nweiz): When cross-platform imports work, use them to set this.
/// Whether we're running in a JS context.
final bool inJS = p.style == p.Style.url;

/// Returns [string] with enough spaces added to the end to make it [length]
/// characters long.
String padRight(String string, int length) {
  if (string.length >= length) return string;

  var result = new StringBuffer();
  result.write(string);
  for (var i = 0; i < length - string.length; i++) {
    result.write(' ');
  }

  return result.toString();
}
