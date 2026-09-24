---
title: Using icons in JavaScript
status: new
---

## Basic syntax

=== "`JavaScript`"

    ``` js linenums="1"
    import { Icon } from 'content/core/ui/buildericon.ts';  // (1)!

    let robloxTilt = Icon({
        icon: 'tilt',
        filled: false,
        size: 'medium',
        classes: ["my-class"],  // (2)!
        material: false,
        rovalra: false,
    });  // (3)!

    document.appendChild(robloxTilt);
    ```

    1. Update path accordingly.

    2. You can also provide an empty list (`[]`) if you don't want to pass any classes; or you can pass a list with multiple classes.

    3. All arguments are required

=== "`TypeScript`"

    ``` ts linenums="1"
    import { Icon } from 'content/core/ui/buildericon.ts';  // (1)!

    let robloxTilt: HTMLElement = Icon({
        icon: 'tilt',
        filled: false,
        size: 'medium',
        classes: ["my-class"],  // (2)!
        material: false,
        rovalra: false,
    });  // (3)!

    document.appendChild(robloxTilt);
    ```

    1. Update path accordingly.

    2. You can also provide an empty list (`[]`) if you don't want to pass any classes; or you can pass a list with multiple classes.

    3. All arguments are required

### Arguments

* `icon: string` &mdash; Icon name
* `filled: boolean` &mdash; Whether the icon should be filled
* `size: PresetSizes | CSSLength` &mdash; the size for the icon
* `classes: string[]` &mdash; An array of extra classes to give the icon element
* `material: boolean` &mdash; Whether to use Material Icons
* `rovalra: boolean` &mdash; Whether to use RoValra Icons

## Using Material Icons

By default, `Icon` uses Builder Icons. To use a Material icon, set `material: true` in the function arguments.

## Using RoValra Icons

By default, `Icon` uses Builder Icons. To use a Material icon, set `rovalra: true` in the function arguments.

!!! warning
    Setting `material: true` and `rovalra: true` on the same icon is Undefined Behaviour, and may produce inconsistent results.

## Available Sizes

The `Icons` function supports the following pre-defined sizes, and size aliases:

=== "Pre-defined Sizes"

    ``` ts
    type PresetSizes =
        'x-small'
        | 'small'
        | 'medium'
        | 'large'
        | 'x-large'
        | 'xx-large';

    ```

=== "Size Aliases"

    ``` ts
    type PresetSizeAlias =
        'xsmall'
        | 'xs'
        | 's'
        | 'med'
        | 'm'
        | 'l'
        | 'xl'
        | 'xlarge'
        | 'xxl'
        | 'xxlarge'
    ```

Additionally, you can also pass a specific size, in pixels, cm, inches, or any other CSS-supported unit of measurement:

```ts
type CSSLength = `${number}${'%'|'cap'|'ch'|'cm'|'deg'|'dpcm'|'dpi'|'dppx'|'dvb'
    |'dvh'|'dvi'|'dvmax'|'dvmin'|'dvw'|'em'|'ex'|'grad'|'Hz'|'ic'|'in'|'kHz'|'lh'
    |'lvb'|'lvh'|'lvi'|'lvmax'|'lvmin'|'lvw'|'mm'|'ms'|'pc'|'pt'|'px'|'Q'|'rad'
    |'rcap'|'rch'|'rem'|'rex'|'ric'|'rlh'|'s'|'svb'|'svh'|'svi'|'svmax'|'svmin'
    |'svw'|'turn'|'vb'|'vh'|'vi'|'vmax'|'vmin'|'vw'|'x'|'fr'|'cqb'|'cqh'|'cqi'
    |'cqmax'|'cqmin'|'cqw'}`;
```

## Icons

### Fonts

* **Builder Icons Outlined:** <https://www.rovalra.com/static/fonts/BuilderIcons-Regular.woff2> (or [truetype](https://www.rovalra.com/static/fonts/BuilderIcons-Regular.ttf))
* **Builder Icons Filled:** <https://www.rovalra.com/static/fonts/BuilderIcons-Filled.woff2> (or [truetype](https://www.rovalra.com/static/fonts/BuilderIcons-Filled.ttf))
* **RoValra Icons:** <https://www.rovalra.com/static/fonts/RoValraIcons.woff2> (or [truetype](https://www.rovalra.com/static/fonts/RoValraIcons.ttf))

### Icon Indexes

* **Builder Icons:** <https://kaan650.github.io/builder-icons/>
* **Material Icons:** <https://mui.com/material-ui/material-icons/>
* **RoValra Icons:** <https://github.com/NotValra/RoValra-Website/tree/main/icons/svg>
