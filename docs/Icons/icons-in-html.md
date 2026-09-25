---
title: Using icons in HTML
status: new
comments: true
---

## Basic Syntax

``` html title="index.html" linenums="1"
<icon>tilt</icon>
```

## Attributes

``` html title="index.html" linenums="1"
<icon fill>tilt</icon>  <!-- Filled icon -->
<icon filled>tilt</icon>  <!-- Filled icon -->
<icon size="small">tilt</icon>  <!-- Small (16px) icon -->
<icon size="20px">tilt</icon>  <!-- 20px icon -->
<icon material>tilt</icon>  <!-- Material icon -->
<icon material fill>tilt</icon>  <!-- Material filled icon -->
<icon rovalra>bronze</icon>  <!-- RoValra icon -->
```

### Filled

The `filled` attribute will insert a filled version of the icon instead of an outlined one.

``` html title="index.html" linenums="1"
<icon filled>tilt</icon>
```

Attribute aliases: `fill` `filled`

### Size

With the `size=` attribute, you can choose between various pre-defined sizes, and you can also enter your own size.

The pre-defined sizes are:

| Size | Size Alias | CSS Size |
| :--: | :--------: | :------: |
| `xxlarge` | `xx-large` `xxl` | `32px` |
| `xlarge` | `x-large` `xl` | `28px` |
| `large` | `l` | `24px` |
| `medium` | `med` `m` | `20px` |
| `small` | `s` | `16px` |
| `xsmall` | `x-small` `xs` | `12px` |

### Material/RoValra

The `material` attribute will select the icon from the list of [Material Icons](https://mui.com/material-ui/material-icons/).

The `rovalra` attribute will seelct the icon from the list of [RoValra Icons](https://github.com/NotValra/RoValra-Website/tree/main/icons/svg).

If neither are provided, the icon will be selected from the default list of [Builder Icons](https://kaan650.github.io/builder-icons/).

!!! warning
    Providing both the `material` and `rovalra` attributes is Undefined Behaviour and may behave inconsistently.

## Passing HTML strings through DOMPurify

When sanitising an HTML string thorugh DOMPurify, make sure to pass `...CUSTOM_ADDED_TAGS` (from `src/content/core/utils/purifyCfg.js`) as an argument.

Otherwise, DOMPurify will strip icon-specific attributes such as `fill`, `filled`, `material`, `rovalra`, or the `icon` tag itself.

Example:

```js
import { CUSTOM_ADDED_TAGS } from '../core/utils/purifyCfg.js';  // (1)!

const sanitise = DOMPurify.sanitize(marked.parse(text), {
    ALLOWED_TAGS: [
        'a',
        'blockquote',
        'br',
        'code',
    ],
    ALLOWED_ATTR: ['class', 'href', 'rel', 'target'],
    ...CUSTOM_ADDED_TAGS,
}).trim();
```

1. Update the path accordingly.
