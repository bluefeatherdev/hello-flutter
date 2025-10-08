# image_example_03

This Flutter application demonstrates how to create and use a **custom `ImageProvider`** by extending the `ImageProvider` class. The example defines a `CustomNetworkImage` that fetches an image from the internet while also passing additional configuration parameters (such as device pixel ratio, locale, platform, and layout constraints) as query parameters in the request URL.

### Key points:

- **CustomNetworkImage class**:
  - Extends `ImageProvider<Uri>`.
  
  - Overrides `obtainKey` to build a `Uri` with query parameters derived from the `ImageConfiguration` (e.g., `dpr`, `locale`, `platform`, `width`, `height`, `bidi`).
  - Uses a custom `_httpClient` to fetch the image data.
  - Implements `loadImage` to:
    - Fetch the image via `HttpClient`.

    - Stream loading progress through `ImageChunkEvent`.
    - Decode the image into a `ui.Codec` for rendering.
    - Handle errors by evicting the image from the cache if loading fails.

- **ImageApp widget**:
  - Uses a `LayoutBuilder` to provide constraints to the `Image` widget.

  - Displays an image of flamingos from the Flutter API documentation assets.
  - The `width` and `height` of the image are set dynamically based on the available constraints.

### Why this matters:
This example shows how to go beyond the built-in `Image.network` or `NetworkImage` by creating a fully customized image provider. This approach is useful when you need:
- To pass device or layout-specific parameters to the server.

- To handle custom caching or error strategies.
- To monitor image loading progress in detail.

This project highlights the flexibility of Flutter’s image system and how developers can extend it for advanced use cases.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
