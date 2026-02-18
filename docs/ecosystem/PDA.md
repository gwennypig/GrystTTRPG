# PDA

#ttrpg #tools #pda #app

**PDA** (Personal Digital Assistant... for adventurers) is the core companion app for Gryst. Available on web, desktop, and mobile, it handles everything mechanical so you can focus on the story.

---

## Platforms

| Platform | Technology | Status |
|----------|------------|--------|
| Web | Browser-based | *Planned* |
| Desktop | Electron | *Planned* |
| iOS | React Native / Native | *Planned* |
| Android | React Native / Native | *Planned* |

Cross-platform sync keeps your characters and campaigns in sync across devices.

---

## Features

### Digital Character Sheets

Interactive character sheets that understand Gryst's systems:

- **Stats & Attributes** — Editable with auto-calculation
- **Momentum Gain** — Derived from Agility + modifiers, always visible
- **Current Momentum** — Live d20 tracker (see below)
- **Actions & Gambits** — Your action library with Add-On costs
- **Inventory & Equipment** — Drag-and-drop management
- **Notes & Backstory** — Rich text for your character's story

### Momentum Tracker

The killer feature. No more fumbling with physical d20s as counters.

```
┌────────────────────────────────────────────────────┐
│ MOMENTUM TRACKER                                   │
│                                                    │
│  ┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐      │
│  │ Hawk   │ │ Raven  │ │ Wolf   │ │ Vex    │      │
│  │  ◉17   │ │  ◉12   │ │  ◉8    │ │  ◉14   │      │
│  │ +5/tick│ │ +6/tick│ │ +4/tick│ │ +5/tick│      │
│  └────────┘ └────────┘ └────────┘ └────────┘      │
│                                                    │
│            [ ⚡ ADVANCE TICK ]                     │
│                                                    │
│  One button. All trackers advance simultaneously.  │
│  Alerts when someone hits 20+ (PIVOTAL!)           │
└────────────────────────────────────────────────────┘
```

**DM presses one button:**
1. All characters add their Momentum Gain
2. Visual indicators show the race
3. **PIVOTAL!** alert when someone crosses 20
4. Automatic remainder calculation
5. Queue display if multiple characters pivot

### DM Dashboard

Everything the DM needs in one view:

- **Party Overview** — All character momentum at a glance
- **NPC/Enemy Tracker** — Quick-add enemies with momentum stats
- **Stack Builder** — Visual representation of the current gambit stack
- **Coupling Display** — Shows hijacks and their coupled actions
- **Resolution Checklist** — Step through the stack with fizzle tracking

### Dice & Gambits

When it's time to resolve:

- **Dice Roller** — Tap to roll, with pool building
- **Outcome Interpreter** — Automatic Triumphus/Successus/Clades/Calamitas
- **Fizzle Calculator** — Half momentum refund, rounded up
- **History Log** — Searchable record of all rolls and outcomes

---

## Connectivity

### Standalone Mode
Use PDA solo — great for players managing their own sheets, or DMs running quick sessions.

### Session Mode
Connect multiple PDAs in a shared session:

- **DM hosts** the session with a room code
- **Players join** and their sheets sync
- **Momentum advances** are broadcast to all players
- **Stack building** happens collaboratively in real-time

### Mundi Integration
PDA can connect to **Mundi et Caeli Grystis** for the full experience:

- Character positions sync with 3D tabletop
- Momentum data flows both directions
- DM can trigger ticks from either app
- Stack visualization appears in both

---

## Design Philosophy

### Mobile-First, Not Mobile-Only
The phone app should be just as capable as desktop. A player should be able to run their character entirely from their phone while the DM uses a full desktop setup.

### One Button, One Tick
The momentum system's power is in its simplicity. Advancing a tick should be **one button press**, not a series of manual edits. The app does the math; the DM tells the story.

### Offline-Capable
Sessions happen in basements, cafes, parks. PDA should work without internet, syncing when connection returns.

---

## Technical Notes

*[For future development]*

```
Stack:
- Frontend: React / React Native
- Desktop: Electron wrapper
- State: Local-first (SQLite / IndexedDB)
- Sync: WebSocket for real-time, REST for persistence
- Protocol: JSON-based session protocol for Mundi integration
```
