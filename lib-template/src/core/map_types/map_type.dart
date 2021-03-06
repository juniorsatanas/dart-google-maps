// Copyright (c) 2012, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of google_maps;

@wrapper @skipConstructor abstract class MapType extends jsw.TypedJsObject {
  static MapType $wrap(js.JsObject proxy) => null;

  MapType([js.JsFunction constructor, List args]) : super(constructor, args);
  MapType.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy);

  html.Node getTile(Point tileCoord, num zoom, js.JsObject/*html.Document*/ ownerDocument);
  void releaseTile(html.Node tile);

  String alt;
  num maxZoom;
  num minZoom;
  String name;
  Projection projection;
  num radius;
  Size tileSize;
}
