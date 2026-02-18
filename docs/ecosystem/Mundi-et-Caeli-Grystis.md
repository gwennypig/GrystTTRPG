# Mundi et Caeli Grystis

#ttrpg #tools #mundi #3d #tabletop

**Mundi et Caeli Grystis** (Latin: "World and Heavens of Gryst") is the 3D tabletop simulator for Gryst — but it's not just a virtual tabletop. It's a **real-time world authoring tool** that lets DMs sketch environments and objects into existence while players interact with them.

---

## The Core Idea

Most virtual tabletops are about placing pre-made assets. Mundi is about **creating**.

Built on **Takeo Igarashi's Teddy technology** — the same sketch-based 3D modeling that powered the *Rakugaki Kingdom* franchise — Mundi lets anyone draw shapes that become 3D objects in real-time.

```
┌────────────────────────────────────────────────────┐
│ TRADITIONAL VTT           vs       MUNDI           │
│                                                    │
│  1. Find asset                 1. Sketch shape     │
│  2. Download asset             2. It's 3D now      │
│  3. Import asset               3. Players interact │
│  4. Place asset                                    │
│  5. Hope it fits               No asset hunting.   │
│                                No import menus.    │
│                                Just draw.          │
└────────────────────────────────────────────────────┘
```

---

## Teddy Tech: Sketch-to-3D

[Teddy](http://www-ui.is.s.u-tokyo.ac.jp/~takeo/teddy/teddy.htm) is a 3D modeling system created by Takeo Igarashi that inflates 2D sketches into 3D objects. You draw a silhouette, and the system generates a plausible 3D mesh.

### How It Works in Mundi

1. **Draw** — Sketch a closed shape (a rock, a tree, a weird alien thing)
2. **Inflate** — Teddy algorithms generate 3D geometry
3. **Refine** — Optional: cut, extrude, bend, paint
4. **Place** — Drop it in the world; it's now interactive

### Why This Matters for TTRPGs

- **DM draws a boulder** → Players can take cover behind it
- **DM sketches a chasm** → Players have to figure out how to cross
- **DM scribbles a strange artifact** → It exists, it's 3D, players can examine it
- **Player describes their character's weapon** → DM sketches it live

The world responds to imagination *in real-time*, not after a prep session hunting for the right asset pack.

---

## Features

### Real-Time World Authoring

The DM can create and modify the environment **during play**:

- **Terrain** — Draw landscapes, carve caves, raise mountains
- **Structures** — Sketch buildings, bridges, walls
- **Objects** — Create props, furniture, artifacts on the fly
- **Destruction** — Carve chunks out of existing geometry (combat damage!)

### Tabletop Simulation

All the standard VTT features, but spatial:

- **Character Tokens** — 3D representations of PCs and NPCs
- **Movement & Positioning** — Drag-and-drop in 3D space
- **Line of Sight** — True 3D visibility calculations
- **Measurement** — Distance tools that respect terrain
- **Fog of War** — Volumetric, not just top-down

### Interaction System

Players can interact with the sketched world:

- **Examine** — Click objects for descriptions (DM-provided or generated)
- **Manipulate** — Push, pull, rotate physics-enabled objects
- **Mark** — Players can annotate the environment
- **Emote** — Character tokens have pose/expression options

### Physics & Dynamics

Optional physics layer for those who want it:

- **Gravity** — Objects fall, roll, stack
- **Collision** — Characters can't walk through walls (unless they can)
- **Projectiles** — Visualize attacks, throws, spells
- **Destruction** — Breakable objects, collapsing structures

---

## Connectivity

### Standalone Mode
Run Mundi solo for prep work — build environments ahead of time, sketch asset libraries, practice the tools.

### Multiplayer Session
Host a session and players connect:

- **DM hosts** with a room code or direct IP
- **Players join** with their own Mundi instance or a lightweight viewer
- **Real-time sync** — Everyone sees sketches appear as the DM draws
- **Collaborative authoring** (optional) — Let players sketch too

### PDA Integration

Mundi syncs with PDA for full mechanical integration:

- **Momentum Display** — See the race visualized in 3D space
- **Stack Visualization** — Gambits appear as visual indicators
- **Character Sync** — Token stats match PDA character sheets
- **One-Button Tick** — Advance momentum from either app

```
┌────────────────────────────────────────────────────┐
│ INTEGRATION FLOW                                   │
│                                                    │
│  PDA (Mechanics)                                   │
│    │                                               │
│    ├── Character data ──────► Token stats          │
│    ├── Momentum state ──────► Visual tracker       │
│    ├── Stack building ──────► Gambit indicators    │
│    │                                               │
│  Mundi (Spatial)                                   │
│    │                                               │
│    ├── Token positions ─────► PDA awareness        │
│    ├── Environment state ───► Shared context       │
│    └── Interaction events ──► Gambit triggers      │
└────────────────────────────────────────────────────┘
```

---

## The Rakugaki Inspiration

The *Rakugaki Kingdom* games (ラクガキ王国) demonstrated that sketch-based 3D could be fun, intuitive, and surprisingly expressive. Players drew creatures that came to life and fought.

Mundi applies that same magic to tabletop worldbuilding:

| Rakugaki | Mundi |
|----------|-------|
| Draw creatures | Draw environments & objects |
| Creatures fight | Players interact & explore |
| Real-time sketching | Real-time world authoring |
| Personal creativity | Collaborative storytelling |

The goal is the same: **reduce the barrier between imagination and realization**.

---

## Platform

| Platform | Technology | Status |
|----------|------------|--------|
| Windows | Unity | *Planned* |
| macOS | Unity | *Planned* |
| Linux | Unity | *Planned* |

Cross-platform play: DM on Windows, players on Mac, everyone in the same session.

---

## Design Philosophy

### Imperfection is Character

Teddy-style modeling produces "imperfect" geometry — and that's the point. A hand-sketched boulder has more character than a photorealistic asset. The aesthetic is *yours*, not an asset store's.

### Creation Over Curation

DMs shouldn't spend hours searching for assets. They should spend that time telling stories. Mundi trades "find the perfect asset" for "sketch something good enough in 10 seconds."

### Collaborative Canvas

The best tabletop moments come from collaboration. When a player says "I grab a chair and throw it," the DM can sketch that chair into existence in the time it takes to say "roll for it."

---

## Technical Notes

*[For future development]*

```
Stack:
- Engine: Unity (cross-platform)
- Modeling: Teddy-based mesh generation (custom implementation)
- Networking: Mirror or custom UDP for low-latency sync
- Integration: JSON protocol over WebSocket for PDA connection
- Rendering: Stylized/toon shader to embrace sketch aesthetic
```

### Teddy Implementation Resources

- [Original Teddy Paper](http://www-ui.is.s.u-tokyo.ac.jp/~takeo/teddy/teddy.htm) — Igarashi's SIGGRAPH 1999 paper
- [SmoothTeddy](http://www-ui.is.s.u-tokyo.ac.jp/~takeo/research/smoothteddy/) — Improved mesh quality
- [Chameleon](http://www-ui.is.s.u-tokyo.ac.jp/~takeo/chameleon/chameleon.htm) — Sketch-based deformation
