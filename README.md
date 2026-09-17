# app_core

The application "skeleton" — an opinionated core built on Riverpod that wires together routing, networking, local storage, and state management, so a new app feature follows one consistent pattern instead of being built from scratch each time.

## What's inside

- **API/networking layer** — a base API service built on `dio`, with request/response logging interceptors (console + in-memory, viewable in a built-in debug page)
- **Base models & repositories** — `BaseModel`, `CoreRepository`, `RootRepository`, `PaginationController` — a consistent repository pattern for fetching and caching data
- **Local storage** — a DAO layer (`CoreDao`) and cache-lifetime helpers, backed by `sembast`/`sqflite`
- **Routing** — a router setup built on `go_router`
- **State management** — `CoreViewModel`/`CoreState`, integrating with Riverpod
- **Debug tools** — an in-app network log viewer and debug info page
- **Modals** — bottom sheet and dialog controllers

## Installation

```yaml
dependencies:
  app_core:
    git:
      url: https://github.com/Repos-Assemble/app_core.git
      ref: main
```

## Usage

```dart
import 'package:app_core/app_core.dart';
```

This package depends on `base_kit`, `common_utils`, `ui_widgets`, and `ui_widgets_basic` — make sure those are resolvable (they're all git dependencies pointing at the `Repos-Assemble` org).

## Open items

- Still depends on `rusty_dart` and `sherlog` from the `TheMakersPrime` GitHub org — check their licenses before distributing this package further, or plan to replace them.

## Credits

This package began as an independent rewrite based on general Flutter app-architecture patterns (Riverpod + repository pattern). It is MIT licensed — see [LICENSE](./LICENSE).
