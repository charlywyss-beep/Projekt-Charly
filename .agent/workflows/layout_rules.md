---
description: Critical layout rules to maintain visual consistency
---

# Layout & Container Structure

## Critical Rule: Container Scope
The main `.container` div (which sets `max-width: 1200px` and centers content) MUST wrap the **entire** application content, not just the header.

### Correct Structure:
```html
<body>
    <div class="container">
        <!-- Header -->
        <div class="header">...</div>

        <!-- Tabs -->
        <div class="card">...</div>

        <!-- Views -->
        <div id="v-tag">...</div>
        <div id="v-woche">...</div>
        
        <!-- ... other content ... -->
    </div> <!-- Container closes HERE, at the end of body -->
</body>
```

### Incorrect Structure (DO NOT DO THIS):
```html
<body>
    <div class="container">
        <div class="header">...</div>
    </div> <!-- WRONG: Container closes too early -->

    <!-- These elements will be full-width and misaligned with header -->
    <div class="card">...</div>
    <div id="v-tag">...</div>
</body>
```

## Header Layout
- The `.header` uses `display: flex; justify-content: space-between;`.
- The `.card` inside the header should have `flex: 1` to take available space.
- The user info and title are inside this `.card`.
- Action buttons are in a separate `div` inside `.header` but outside `.card`.
