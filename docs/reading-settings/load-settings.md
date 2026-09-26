---
title: Load Settings
status: slow
icon: lucide/settings-2
comments: true
tags:
    - Settings
---

To read settings with `loadSettings`, do as follows:

=== "`JavaScript`"

    ``` js title="your-file.js" linenums="1"
    import { loadSettings } from '../core/settings/handlesettings.js';

    async function main() {
        const settings = await loadSettings(); // (1)!
    }
    ```

    1. Each key in `settings` corresponds directly to a setting key from `SETTINGS_CONFIG`

=== "`TypeScript`"

    ``` ts title="your-file.ts" linenums="1"
    import { loadSettings } from '../core/settings/handlesettings.js';

    async function main() {
        const settings: Record<string, unknown> = await loadSettings();  // (1)!
    }
    ```

    1. Each key in `settings` corresponds directly to a setting key from `SETTINGS_CONFIG`

!!! failure "Deprecated"
    This method has been deprecated in favor of the [unified settings API](unified.md), as the new alternative automatically applies caching. In contrast, this method always loads all settings on each call, without caching. However, this method and [the chrome API](chrome-storage.md) remain usable in contexts in which the unified settings API may not be available.
