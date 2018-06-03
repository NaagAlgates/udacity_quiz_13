// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
///

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // While the @required checks for whether a named parameter is passed in,
  // it doesn't check whether the object passed in is null. We check that
  // in the assert statement.
  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);

  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    assert(debugCheckHasMaterial(context));

    return Material(
      color: Colors.transparent,
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(iconLocation),
          ),
          new Center(
              child: Text(
            name,
            style: Theme.of(context).textTheme.headline,
            textAlign: TextAlign.center,
          ))
        ],
      ),
    );
  }
}
