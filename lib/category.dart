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
  final String categoryName;
  final ColorSwatch categoryColor;
  final IconData categoryIcon;

  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // While the @required checks for whether a named parameter is passed in,
  // it doesn't check whether the object passed in is null. We check that
  // in the assert statement.
  const Category({
    Key key,
    @required this.categoryName,
    @required this.categoryColor,
    @required this.categoryIcon,
  })  : assert(categoryName != null),
        assert(categoryColor != null),
        assert(categoryIcon != null),
        super(key: key);

  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    assert(debugCheckHasMaterial(context));

    return Material(
        color: Colors.transparent,
        child: new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Container(
              height: 100.0,
              child: new InkWell(
                borderRadius: BorderRadius.circular(50.0),
                highlightColor: categoryColor,
                onTap: () {
                  print('I was tapped!');
                },
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        categoryIcon,
                        size: 60.0,
                      ),
                    ),
                    new Center(
                        child: Text(
                      categoryName,
                      style: new TextStyle(fontSize: 24.0),
                      textAlign: TextAlign.center,
                    ))
                  ],
                ),
              )),
        ));
  }
}
