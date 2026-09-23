---
title: Adding a Locale
---

To add a locale, first create the locale file under `public/Assets/locales/<language_code>.json`. Make sure it follows the overall structure of the English locale file.

??? tip
    If a locale isn't found in your translation, i18next will automatically fallback to the English locale.

Once you've added the locale file, you'll want to modify the `rovalraLanguage` setting in `core/settings/settingConfig.js` to add your language as an option, in `options: [...]`. Add your language as:

```js
{ label: '<Language> (<Language name in said language>)', value: '<language code>' },
```

Example:

```js
{ label: 'Romanian (Română)', value: 'ro' },
```

## Adding yourself as a Translator

To actually get the **translator badge** and show up in the contributor list:

1. First, add yourself to `src/content/core/configs/userIds.js` to `TRANSLATOR_USER_IDS`. This will give you a translator badge
2. Create a locale under `settings.credits.otherContributions.locales` with a short description stating that you made a locale for that specific language. You will need this in the next step.
3. Add yourself to `src/content/core/configs/otherContributions.ts` to `OTHER_CONTRIBUTIONS.Locales.contributors` as `new Contribution(<roblox user ID>, "locales.<rest of locale key>", "<Pull Request link (optional)>")`. Take the other entries as examples if you need to.
