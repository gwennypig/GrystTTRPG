# Momentum & Turn System

#ttrpg #rules #core #momentum #initiative

## Overview

Turns are not static initiative order — they're earned through **Momentum**, a racing resource that determines when characters act. Combat flows through two phases: **Accumulation** (everyone racing to 20) and **Resolution** (building and resolving a gambit stack).

---

## Momentum Basics

### Momentum Gain
Each character has a **Momentum Gain** stat:

```
Momentum Gain = Agility + [Modifiers]
```

This represents how quickly a character builds toward their next action.

### Tracking Momentum
- Use a **d20 as a tracker** (not rolled — just a counter)
- Start at 0 (or determined by setup)
- Track carries over between phases

---

## The Momentum Race

### Accumulation Phase

All characters add their Momentum Gain **simultaneously**. Keep adding until someone reaches 20+.

```
┌────────────────────────────────────────────────────┐
│ ACCUMULATION                                       │
│                                                    │
│  Everyone adds Momentum Gain simultaneously        │
│  ↓                                                 │
│  Someone hits 20+ → They become PIVOTAL CHARACTER  │
│  ↓                                                 │
│  → Proceed to Resolution Phase                     │
└────────────────────────────────────────────────────┘
```

### Pivotal Character

The first character to reach 20+ becomes the **Pivotal Character** — they've won initiative and will lead this resolution phase.

**Important:** Characters who didn't reach 20 **keep their full momentum**. They didn't spend anything to lose the race — their momentum is still theirs to spend on Add-Ons.

### Multiple Characters at 20+

If multiple characters cross 20 on the same "tick":

1. **First tiebreaker:** Higher remainder after subtracting 20
2. **Second tiebreaker:** Roll a d6, higher wins

The winner becomes Pivotal; the others queue behind them.

### Example

| Character | Momentum Gain | Before | After Adding | Remainder | Result |
|-----------|---------------|--------|--------------|-----------|--------|
| Raven | 6 | 15 | 21 | **1** | Queued 2nd |
| Wolf | 4 | 12 | 16 | — | Keeps 16, can Add-On |
| Hawk | 5 | 17 | 22 | **2** | **Pivotal** |

Hawk becomes Pivotal (remainder 2). Raven queues behind (remainder 1). Wolf didn't hit 20, keeps their 16 momentum.

---

## Resolution Phase: The Gambit Stack

When someone becomes Pivotal, combat shifts from racing to **stack building**.

### Building the Stack

1. **Pivotal Character declares their Gambit** (e.g., "I shoot my blaster")
2. **Add-On window opens**, ordered by highest momentum → lowest
3. Each character may spend momentum to Add-On
4. Add-Ons slot **BEFORE** or **AFTER** the Pivotal's gambit in the stack
   - Unless the action specifies its ordering when added on
5. The stack is now a **queue of gambits** waiting to resolve

```
┌────────────────────────────────────────────────────┐
│ STACK BUILDING                                     │
│                                                    │
│  Pivotal: "I shoot my blaster" [SLOT 1]            │
│  ↓                                                 │
│  Add-On window (highest momentum → lowest):        │
│    Ally A (14 momentum): "I aim assist" [BEFORE]   │
│    Ally B (10 momentum): "I cover fire" [AFTER]    │
│  ↓                                                 │
│  Final Stack:                                      │
│    1. Aim Assist (Ally A)                          │
│    2. Shoot Blaster (Pivotal)                      │
│    3. Cover Fire (Ally B)                          │
└────────────────────────────────────────────────────┘
```

### Stack Resolution

The DM resolves the gambit stack, narrating it as **one fluid sequence**. This isn't "you go, then you go" — it's a single cinematic moment built collaboratively.

**Fizzle Rule:** If a gambit no longer applies when it resolves (target dead, situation changed, etc.), it **fizzles** and returns **half the momentum spent, rounded up**. The idea is the character lost some momentum because they were planning on doing something that no longer was possible, they're caught flatfooted, losing half of them momentum they would have fully spent but didn't fully commit to something so they still have energy left in the tank.

### After Resolution

1. Subtract 20 from the Pivotal Character's tracker
2. If another character is at 20+ → they become Pivotal, repeat Resolution
3. If no one is at 20+ → return to Accumulation Phase

```
┌────────────────────────────────────────────────────┐
│ FULL LOOP                                          │
│                                                    │
│  ACCUMULATION ──→ Someone hits 20+                 │
│       ↑                    ↓                       │
│       │            RESOLUTION (Stack)              │
│       │                    ↓                       │
│       │           Anyone else at 20+?              │
│       │             ↙            ↘                 │
│       └── No ────              ─── Yes → Resolve   │
└────────────────────────────────────────────────────┘
```

---

## Add-On System

### How Add-On Works

During the Add-On window, characters may spend momentum to join the stack.

1. **Order:** Highest current momentum → lowest gets first choice
2. **Placement:** Choose to go BEFORE or AFTER in the stack (unless action specifies)
3. **Cost:** Subtract Add-On Cost from your momentum tracker
4. Your gambit enters the queue

### Add-On Costs

Each action has an **Add-On Cost** listed. Higher-impact actions cost more.

| Action Type | Typical Add-On Cost |
|-------------|---------------------|
| Minor action | 3-5 Momentum |
| Standard action | 6-10 Momentum |
| Major action | 11-15 Momentum |

*[TODO: Define specific action costs]*

### Add-On Strategy

- Spending momentum **delays your next turn** (you're further from 20)
- Coordinating adds creates powerful combo moments
- The fizzle refund protects you if the situation shifts
- Consider: spend now for teamwork, or save to become Pivotal yourself?

---

## Hijack

Some actions have the **Hijack** keyword.

**Hijack** allows you to Add-On to an **enemy's turn** — interrupting or countering.

### Hijack Rules

- Must have an action with the Hijack keyword
- Pay the Add-On Cost from your Momentum
- Your Hijack gambit enters the stack (placement per Hijack ability rules)

### Example Hijack Actions

- **Parry** (Hijack): React to an incoming attack, reduce damage
- **Counterspell** (Hijack): Interrupt enemy spellcasting
- **Intercept** (Hijack): Move to block an attack targeting an ally

---

## Why This System?

### Player Engagement
No one is "waiting for their turn." During Accumulation, everyone's watching the race. During Resolution, everyone's deciding whether to Add-On, where to slot in, how to build the stack. The DM weaves it all into one narrative beat.

### Dynamic Turn Order
Initiative isn't rolled once and forgotten. It shifts every phase based on momentum choices. Spend to help allies, and you delay yourself. Save up, and you'll be Pivotal more often.

### Narrative Combat
The stack resolves as a single moment, not ping-pong turns. "Raven aims, Hawk fires, Wolf dives for cover" happens together — it *feels* like an action scene.

### Meaningful Choices
- Spend momentum to Add-On? Or save for your own turn?
- Slot before (set up the Pivotal) or after (capitalize on their action)?
- Hijack an enemy? Worth the momentum cost?

---

## Quick Reference

| Term | Meaning |
|------|---------|
| **Momentum** | Resource tracked on d20, builds toward turns |
| **Momentum Gain** | How much you add each tick (Agility + mods) |
| **Accumulation** | Phase where everyone races to 20 |
| **Pivotal Character** | First to reach 20+, leads the resolution |
| **Resolution** | Phase where the gambit stack builds and resolves |
| **Add-On** | Spend momentum to join someone else's stack |
| **Add-On Cost** | Momentum price to Add-On an action |
| **Hijack** | Special actions that Add-On to enemy stacks |
| **Fizzle** | Gambit can't apply → refund half momentum (round up) |
| **Stack** | Queue of gambits resolved as one narrative moment |
