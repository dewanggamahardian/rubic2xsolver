# Design direction

Product: Cube 2x2 Solver. A local manual-input solver for casual solvers, in Indonesian.

## Dials

ENERGY 1 / RHYTHM 1 / MOTION 1.

## Identity

- Dark navy workbench (#0d1726, #17263a). The six sticker colors are the data and need the contrast. The dark surface is a tool decision, not a "tech" default.
- Mint (#63e0bd) is the single action accent. It marks the primary action, focus, and valid state. It is not used as decoration.
- System UI font for fast rendering and legibility without a webfont dependency.
- Three work surfaces: input, preview, solution. One elevation level because they are peers.
- The 3D cube is the focal point. The surrounding UI stays quiet.

## Constraints

- Any color scheme. The app detects a consistent color-to-face mapping from the 24 stickers.
- Manual input. No camera.
- A 2x2 has no centers. The six face cards are positions chosen by the user, not a required white-green-red orientation.

## Reasons

- Dark theme keeps six sticker colors legible and supports long input sessions.
- Mint marks the one action that matters; selected states also use a check mark and `aria-pressed`, not color alone.
- No decorative icons or emoji. The cube, move arrows, and rotate control carry the meaning.
- The solution cube animates one move at a time to show the move. When `prefers-reduced-motion` is set, it does not auto-play.
