# Style Guide: BaCReMS

A small, calm look for a government-style app: dark blue for trust, lots of white space, and clear colors for success and error.

## 1. Colors

| Role | Hex | Used for |
|------|-----|----------|
| Primary | `#0b3d5c` | Primary buttons, links, headings, nav bar |
| Background | `#f5f7fa` | Page background |
| Text | `#12263a` | Body text |
| Success | `#23683f` | "Approved" status, success messages |
| Error | `#a8352a` | Error messages, invalid fields, Delete button |
| Surface | `#ffffff` | Cards, table rows, form panels |

## 2. Contrast check (WCAG AA needs 4.5:1 or higher)

| Text color | On | Ratio | Result |
|------------|----|-------|--------|
| Text `#12263a` | Background `#f5f7fa` | 14.34:1 | Pass |
| Text `#12263a` | Surface `#ffffff` | 15.40:1 | Pass |
| White | Primary `#0b3d5c` (button text) | 11.44:1 | Pass |
| White | Success `#23683f` | 6.72:1 | Pass |
| White | Error `#a8352a` | 6.55:1 | Pass |
| Error `#a8352a` | Surface `#ffffff` (error message text) | 6.55:1 | Pass |

Ratios were calculated with the WCAG formula and can be double-checked on the WebAIM Contrast Checker.

## 3. Typography

| Use | Font | Notes |
|-----|------|-------|
| Headings | Poppins (fallback Arial, sans-serif) | Weight 600 |
| Body | Inter (fallback Arial, sans-serif) | Weight 400 |
| Base size | 16px | Line height 1.5 |

Heading sizes: h1 `2rem`, h2 `1.5rem`, h3 `1.25rem`.

## 4. Components

**Primary button** (Save, + New Request)
Background primary, white bold text, 8px rounded corners, padding `0.6rem 1.2rem`. On hover the background gets slightly darker.

**Secondary button** (Cancel, View, Edit)
White background, primary-colored text, 2px primary border, same size and corners as the primary button.

**Text input**
White background, 1px gray border (`#8a97a6`), 8px corners, padding `0.5rem 0.75rem`. On focus the border becomes primary with a visible outline. Labels sit above the input in bold, and required fields are marked with `*`.

**Error message**
Shown directly under the field in error color, bold, with a leading "!" so it does not rely on color alone. The invalid input gets a 2px error-colored border.


