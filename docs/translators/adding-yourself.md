---
title: Add yourself as a translator
comments: true
icon: lucide/user-pen
tags:
    - Credit
    - Translators
---

1. To add yourself as a translator, simply go into `content/core/configs/userIds.js` and add your Roblox user id and your gh username! Afterwards you will get a fancy badge!

``` js title='content/core/configs/userIds.js' linenums='1'
export const TRANSLATOR_USER_IDS = [
    '1564574922', // bogdan-glitchm
    '10646979010', // rav4toy
    '3121706', // AuroxNova
    '48255812', // aliceenight
    '315646839', // imderlord
    ...
    '0000000000', // ghost
    'Roblox UID', // your_gh_username
];
```

2. Create a locale under `settings.credits.otherContributions.locales` with a short description stating that you made a locale for that specific language. You will need this in the next step.

3. Add yourself to `src/content/core/configs/otherContributions.ts` to `OTHER_CONTRIBUTIONS.Locales.contributors` as `new Contribution(<roblox user ID>, "locales.<rest of locale key>", "<Pull Request link (optional)>")`. Take the other entries as examples if you need to.

``` ts title='content/core/configs/otherContributions.ts' linenums='1'
export const OTHER_CONTRIBUTIONS: ContributionsType = {
    ...
    Locales: {
        label: "RoValra Languages",
        contributors: [
            new Contribution(1564574922, "locales.madeRo", "https://github.com/NotValra/RoValra/pull/215"),  // @BossBoss2021
            new Contribution(10646979010, "locales.madeRo", "https://github.com/NotValra/RoValra/pull/215"),  // @RecreationalActive
            new Contribution(3121706, "locales.madeEs", "https://github.com/NotValra/RoValra/pull/215"),  // @AuroxNova
            ...
            new Contribution(1, "locales.madeRoblox", "https://github.com/NotValra/RoValra/pull/000"),  // @ghost
            new Contribution(/*your roblox uid*/, "locales.madeEs", "https://github.com/NotValra/RoValra/pull/###"),  // @your_gh_username
        ]
    }
};
```