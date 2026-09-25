---
title: Chrome Storage
status: deprecated
comments: true
---

To read settings with `chrome` APIs, run the following:

``` js title="content/core/settings/settingConfig.js" linenums="1"
export const SETTINGS_CONFIG = {
    Category: {
        ...,

        settings: {
            settingName: {
                ...,

                default: 'foo',
            },

            ...
        },
    },
```

=== "`JavaScript`"
    ``` js title="your-file.js" linenums="1"
    const setting = (await chrome.storage.local.get({ settingName: 'foo' })) // (1)!
        .settingName;
    ```

    1. Please, in the Record passed to chrome.storage.local.get, make sure that the key is your setting key as it appears in `SETTINGS_CONFIG`, and that the value is your default value!

=== "`TypeScript`"
    ``` ts title="your-file.ts" linenums="1"
    const setting: unknown =
        (await chrome.storage.local.get({ settingName: 'foo' })).settingName;  // (1)!

    if (typeof setting !== 'string') {
        throw new Error("Invalid type!");
    }
    ```

    1. Please, in the Record passed to chrome.storage.local.get, make sure that the key is your setting key as it appears in `SETTINGS_CONFIG`, and that the value is your default value!

!!! failure "Deprecated"
    This method has been deprecated in favor of the [unified settings API](unified.md), as the new alternative automatically applies caching.
