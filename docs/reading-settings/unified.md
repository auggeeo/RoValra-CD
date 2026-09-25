---
title: Unified Settings API
comments: true
---

To read a setting using the unified settings API, do:

=== "`JavaScript`"

    ``` js title="your-file.js" linenums="1"
    import { settings } from '../core/settings/getSettings.js';

    async function main() {
        const setting = await settings.settingKey;  // (1)!
    }
    ```

    1. Replace `settingKey` with your setting's key as it appears in `SETTINGS_CONFIG`

=== "`TypeScript`"

    ``` ts title="your-file.ts" linenums="1"
    import { settings } from '../core/settings/getSettings.js';

    async function main() {
        const setting: unknown = await settings.settingKey;  // (1)!
    }
    ```

    1. Replace `settingKey` with your setting's key as it appears in `SETTINGS_CONFIG`

`settings` will automatically update when any setting is changed, and also automatically loads all settings *once* and caches them until the next mutation to the settings.
