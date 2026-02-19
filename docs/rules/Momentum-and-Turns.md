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
- Momentum can go **negative** (see Hijack Tax)

---

## Parties & Cooperation

Combat is organized into **Parties** — groups of characters working toward shared goals.

### What is a Party?

A party is any group with **Cooperation** — the ability to freely coordinate during the Add-On window.

**Typical setup:**
- 1 Player Party vs 1 GM Enemy Party
- 2 Player Parties vs 1 GM Enemy Party (players split on goals)
- 1 Player Party vs 2 GM Enemy Parties (multiple factions)

### Forming & Splitting Parties

Parties can form or split **dynamically** during play:

- **Split:** Players disagree on a goal mid-combat → they can split into separate parties
- **Merge:** Former enemies align against a common threat → new Cooperation
- **Betrayal:** A character switches sides → joins a different party's Cooperation

The GM adjudicates when Cooperation makes narrative sense.

### What Cooperation Gives You

Within your party (characters you have Cooperation with):

1. **Free Add-Ons** — No special requirements to add onto a partymate's stack
2. **Flexible Ordering** — Partymates can negotiate who slots where, regardless of raw momentum order
3. **Shared Strategy** — You're building the stack together

Without Cooperation (different party):

1. **Locked Out** — You cannot Add-On to their stack...
2. **Unless You Hijack** — Hijack actions open the door (see below)

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

**Fizzle Rule:** If a gambit no longer applies when it resolves (target dead, situation changed, etc.), it **fizzles** and returns **half the momentum spent, rounded up**. The idea is the character lost some momentum because they were planning on doing something that no longer was possible, they're caught flatfooted, losing half of the momentum they would have fully spent but didn't fully commit to something so they still have energy left in the tank.

### Free Fizzle: Conditional Add-Ons

When adding an action to the stack, you can declare it **conditional** on a specific factor. If that condition isn't satisfied, you **fizzle for free** — full momentum refund.

```
┌────────────────────────────────────────────────────┐
│ FREE FIZZLE                                        │
│                                                    │
│  Wolf: "I Dive for Cover — conditional on          │
│         something threatening me."                 │
│                                                    │
│  (Wolf is anticipating the deflected bolt          │
│   might come their way)                            │
│                                                    │
│  CASE A: Deflected bolt heads toward Wolf          │
│    → Condition satisfied → Dive for Cover resolves │
│                                                    │
│  CASE B: Deflected bolt goes elsewhere             │
│    → Condition NOT satisfied                       │
│    → Wolf free fizzles (full momentum returned)    │
│    → Wolf didn't need to dive, so they didn't      │
└────────────────────────────────────────────────────┘
```

**Requirements for Free Fizzle:**
- The condition must be **clearly defined** when adding to the stack
- The DM judges whether the condition was satisfied
- The player doesn't get to retroactively decide "actually, that counts"

**Why this exists:** It allows players to plan reactive actions without wasting resources if the situation doesn't develop as expected. Wolf can prepare to dive without committing if there's nothing to dive from.

### Hijack Failure Cascade

If a **Hijack action itself fails**, the "opportunity" for the hijacking party never materializes. When this happens:

- The hijack couples but the hijacker's gambit results in Clades/Calamitas
- The door never truly opened — there was no chaos to capitalize on
- **All add-ons from the hijacking party free fizzle**

```
┌────────────────────────────────────────────────────┐
│ HIJACK FAILURE CASCADE                             │
│                                                    │
│  Hawk: "Shoot Blaster"                             │
│  Vex: "Force Reflector" (HIJACK!)                  │
│  Kira: "Sneak Shot" (riding the chaos)             │
│  Shade: "Smoke Bomb" (riding the chaos)            │
│                                                    │
│  Resolution:                                       │
│    Hawk fires → Vex attempts deflect...            │
│    Vex rolls CLADES — the deflect fails!           │
│    Hawk's shot hits Vex normally.                  │
│                                                    │
│  RESULT:                                           │
│    The "opportunity" never arose.                  │
│    Kira and Shade FREE FIZZLE.                     │
│    Their plans depended on successful chaos.       │
│    No chaos materialized → no commitment lost.     │
└────────────────────────────────────────────────────┘
```

### Hijack Outcomes Define the Cascade

The hijack's **own Gambit outcomes** determine what happens to follow-up add-ons. This is part of the Gambit's design:

| Hijack Design | On Failure... |
|---------------|---------------|
| **Precise Timing** (e.g., Force Reflector) | Clades/Calamitas → Free fizzle cascade. The window never opened. |
| **Chaotic Disruption** (e.g., Flash Grenade) | No cascade. The mere attempt creates chaos regardless of outcome. |
| **Partial Success** (e.g., Interception) | Clades → partial, follow-ups proceed. Calamitas → cascade. |

```
┌────────────────────────────────────────────────────┐
│ EXAMPLE: Force Reflector Gambit                    │
│                                                    │
│ TRIUMPHUS: Deflect + redirect at target of choice  │
│   → Door opens, full chaos                         │
│                                                    │
│ SUCCESSUS: Deflect into environment                │
│   → Door opens, chaos ensues                       │
│                                                    │
│ CLADES: Deflect fails, hit normally                │
│   → FREE FIZZLE CASCADE — no opportunity arose     │
│                                                    │
│ CALAMITAS: Reflector overloads, extra damage       │
│   → FREE FIZZLE CASCADE — worse than nothing       │
└────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────┐
│ EXAMPLE: Flash Grenade Gambit                      │
│                                                    │
│ TRIUMPHUS: Full blind, enemies staggered           │
│ SUCCESSUS: Partial blind, disoriented              │
│ CLADES: Grenade fizzles, but chaos of the toss     │
│ CALAMITAS: Blinds allies too                       │
│                                                    │
│ → NO CASCADE on any outcome — the disruption       │
│   itself was the point, not the result             │
└────────────────────────────────────────────────────┘
```

The hijacker themselves **does not free fizzle** — they committed to the action regardless. They pay the normal cost. Only the follow-up add-ons are affected by the cascade rules defined in the hijack Gambit.

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

## Hijack & The Door

Some actions have the **Hijack** keyword. Hijack is how parties break into each other's stacks.

### The Problem

During the Add-On window, you can only add onto characters you have **Cooperation** with. If the Pivotal Character is in a different party, you're locked out.

### The Solution: Hijack Opens the Door

When a character uses a **Hijack action**, they force their way into the stack — and they **open the door** for their entire party.

```
┌────────────────────────────────────────────────────┐
│ HIJACK AS DOOR OPENER                              │
│                                                    │
│  Party 1 is Pivotal. Party 2 is locked out.        │
│  ↓                                                 │
│  Party 2 member uses Hijack action!                │
│  ↓                                                 │
│  THE DOOR IS NOW OPEN                              │
│  ↓                                                 │
│  Other Party 2 members can now Add-On              │
│  (but they pay the Hijack Tax)                     │
└────────────────────────────────────────────────────┘
```

### Hijack Rules

1. **Requires Hijack keyword** — Only certain actions can open the door
2. **Pay normal Add-On Cost** — The hijacker pays their action's cost
3. **Coupling** — Your hijack action **couples** with the action it's hijacking (see below)
4. **Door opens for your party** — After your hijack, partymates can add-on
5. **Post-Couple Ordering** — Hijacking party's follow-up actions must come AFTER the couple

### Coupling: The Heart of Hijack

When you hijack, your action doesn't just slot into the stack — it **couples** with the action you're hijacking. The two resolve as a single dramatic unit.

```
┌────────────────────────────────────────────────────┐
│ COUPLING                                           │
│                                                    │
│  Hawk: "Shoot Blaster"                             │
│  Vex: "Force Reflector" (HIJACK!)                  │
│  ↓                                                 │
│  These become COUPLED:                             │
│  [Shoot Blaster ↔ Force Reflector]                 │
│  ↓                                                 │
│  They resolve together as one moment               │
│  "Hawk fires — Vex deflects!"                      │
└────────────────────────────────────────────────────┘
```

**Why coupling matters:**
- The hijack IS the reaction — it doesn't make sense before the action it's reacting to
- The chaos of the couple is what opens the door for your party
- It creates a clear narrative beat: action → reaction → fallout

### Resolution Order with Hijack

When a hijack occurs, the stack has three zones:

```
┌────────────────────────────────────────────────────┐
│ RESOLUTION ORDER                                   │
│                                                    │
│  1. PIVOTAL PARTY (free ordering)                  │
│     Actions from the pivotal character's party     │
│     can go BEFORE or AFTER the couple              │
│                                                    │
│  2. THE COUPLE (locked position)                   │
│     [Hijacked Action ↔ Hijack Reaction]            │
│     Resolves as one unit                           │
│                                                    │
│  3. HIJACKING PARTY FOLLOW-UP (after couple)       │
│     All non-hijack add-ons from the hijacking      │
│     party MUST resolve AFTER the couple            │
│     (they can negotiate order among themselves)    │
└────────────────────────────────────────────────────┘
```

The pivotal party still has flexibility — they can set up before the couple or react after it. But the hijacking party's follow-up actions represent capitalizing on the chaos, so they always come after.

### The Hijack Tax

Once the door is open, your partymates can Add-On even **without** Hijack actions — but they pay a **Hijack Tax** on top of their normal Add-On Cost.

| Cost | Description |
|------|-------------|
| **Hijacker** | Normal Add-On Cost (they opened the door) |
| **Partymates** | Normal Add-On Cost **+ Hijack Tax (5)** |

The Hijack Tax is paid **after** the normal cost. This means momentum can go **negative**.

### Negative Momentum

If the Hijack Tax drops you below 0, track it as negative:
- `3 → 2 → 1 → 0 → -1 → -2 → -3...`
- You can use a negative d20 orientation if you want, but just tracking the number works
- Negative momentum means you're **far** from your next pivot — you'll be racing back up

### Who Gets Locked Out?

Characters are checked in **momentum order** (highest → lowest). Once a party's opportunity passes without someone hijacking, they don't get another chance that stack.

**Passed over = locked out:**
- If you're Party 2 and all Party 2 members with higher momentum than the remaining add-on window chose not to hijack, later Party 2 members can't jump in
- The door must be opened by someone *before* the window closes for your party

### Example: The Ambush

```
Pivotal: Hawk (Party 1) — "Shoot blaster"

Add-On Window (by momentum):

  Raven [Party 1] 14 mom → "Covering shot" [BEFORE couple]
    └─ FREE (Cooperation with Hawk)
    └─ Party 1 can freely place before or after
  
  Vex [Party 2] 12 mom → "Force Reflector" (HIJACK!)
    └─ COUPLES with "Shoot Blaster"
    └─ DOOR OPENS for Party 2
    └─ Costs: 8 momentum (normal Add-On Cost)
  
  Wolf [Party 1] 10 mom → "Dive for cover" [AFTER couple]
    └─ FREE (Cooperation with Hawk)
    └─ Party 1 can freely place before or after
  
  Kira [Party 2] 8 mom → "Sneak Shot" [AFTER couple — required]
    └─ Door is open! But pays Hijack Tax
    └─ Costs: 6 + 5 = 11 momentum (goes to -3!)
    └─ Must be after the couple (capitalizing on chaos)
  
  Shade [Party 2] 5 mom → "Smoke Bomb" [AFTER couple — required]
    └─ Also pays Hijack Tax
    └─ Costs: 4 + 5 = 9 momentum (goes to -4!)
    └─ Party 2 negotiates: Shade goes before Kira

Resolution Order:
  1. Covering Shot (Raven)         ← Party 1, before couple
  2. [COUPLE] Shoot Blaster (Hawk) ↔ Force Reflector (Vex)
  3. Dive for Cover (Wolf)         ← Party 1, after couple
  4. Smoke Bomb (Shade)            ← Party 2 follow-up (chaos!)
  5. Sneak Shot (Kira)             ← Party 2 follow-up
```

**The narrative:** Raven sets up a covering shot. Hawk fires her blaster — but Vex's Force Reflector was ready, deflecting the bolt into the air (or maybe into a bystander — the gambit decides!). Wolf dives for cover as chaos erupts. In that confusion, Shade throws a smoke bomb and Kira takes a sneak shot through the haze.

Party 2 turned Party 1's attack against them! But Kira and Shade paid heavily — they're deep in negative momentum and won't be pivotal for a while.

### The Stack is a Moment, Not a Timeline

The stack represents a **chaotic cluster of events** happening in a single dramatic beat. The numbered order is **mechanical** — it determines what fizzles, what lands, how effects interact — but it's not a strict second-by-second timeline.

Remember our example stack:
```
1. Covering Shot (Raven)
2. [COUPLE] Shoot Blaster (Hawk) ↔ Force Reflector (Vex)
3. Dive for Cover (Wolf)
4. Smoke Bomb (Shade)
5. Sneak Shot (Kira)
```

The DM weaves the narration however best tells the story:

**Option A — Sequential:**
> "Raven lines up a covering shot. Hawk pulls the trigger — but Vex's Force Reflector flares to life, deflecting the bolt into the ceiling! Wolf dives behind a crate as sparks rain down. In the chaos, Shade hurls a smoke bomb and Kira's sneak shot cracks through the haze."

**Option B — Action-Reaction:**
> "Hawk fires her blaster BUT Vex was ready — the Force Reflector catches it and sends it screaming past Raven's covering fire! Wolf hits the deck. Before the dust settles, smoke fills the air and a shot rings out from Kira's position."

**Option C — Chaos First:**
> "Everything erupts at once. Blaster fire, the shimmer of a force field, bodies diving for cover. When the smoke clears — wait, where did that smoke come from? — Kira's already taken her shot."

**The key constraint:** The couple (Hawk's shot ↔ Vex's reflector) always resolves together — that's the dramatic hinge. Party 2's follow-up (smoke bomb, sneak shot) always comes after, capitalizing on the chaos. But *how* the DM describes that beat is completely flexible.

The stack order tells you **what mechanically succeeded** — the DM decides **how it felt**. Same outcomes, different cinema.

```
┌────────────────────────────────────────────────────┐
│ STACK = MECHANICAL TRUTH                           │
│ NARRATION = DRAMATIC TRUTH                         │
│                                                    │
│ The stack answers: "What happened?"                │
│ The DM answers: "How did it look?"                 │
│                                                    │
│ The COUPLE is sacred — action meets reaction.      │
│ Everything else flows around that moment.          │
└────────────────────────────────────────────────────┘
```

### Example Hijack Actions

- **Parry** (Hijack): React to an incoming attack, reduce damage
- **Counterspell** (Hijack): Interrupt enemy spellcasting
- **Intercept** (Hijack): Move to block an attack targeting an ally
- **Force Reflector** (Hijack): Redirect an energy attack
- **Overwatch** (Hijack): Prepared shot triggers on enemy action

### Strategic Implications

- **Hijack actions are valuable** — They're door-openers, not just interrupts
- **Coordinate your party** — Who hijacks? Who follows through?
- **Momentum debt is real** — Going negative is powerful but costly
- **Lock them out** — If you can bait out their hijackers early, the rest of their party is stuck

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
| **Momentum** | Resource tracked on d20, builds toward turns (can go negative) |
| **Momentum Gain** | How much you add each tick (Agility + mods) |
| **Accumulation** | Phase where everyone races to 20 |
| **Pivotal Character** | First to reach 20+, leads the resolution |
| **Resolution** | Phase where the gambit stack builds and resolves |
| **Party** | Group of characters with shared goals |
| **Cooperation** | Relationship that allows free Add-Ons and flexible ordering |
| **Add-On** | Spend momentum to join someone else's stack |
| **Add-On Cost** | Momentum price to Add-On an action |
| **Hijack** | Special actions that open the door to enemy stacks |
| **Coupling** | Hijack + hijacked action resolve as one unit |
| **The Door** | Once a party hijacks, their partymates can also Add-On |
| **Hijack Tax** | Extra cost (5) for non-hijack Add-Ons after the door opens |
| **Negative Momentum** | Momentum below 0; you're far from your next pivot |
| **Locked Out** | Party passed over without hijacking; can't Add-On this stack |
| **Fizzle** | Gambit can't apply → refund half momentum (round up) |
| **Free Fizzle** | Conditional add-on's condition not met → full refund |
| **Hijack Failure Cascade** | Hijack fails → all hijacking party add-ons free fizzle |
| **Stack** | Queue of gambits resolved as one narrative moment |
