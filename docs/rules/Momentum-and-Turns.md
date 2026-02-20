# MOMENTVM & Turn System

#ttrpg #rules #core #momentum #initiative

## Overview

Turns are not static initiative order — they're earned through **MOMENTVM (MTM)**, a racing resource that determines when PERSONAe act. Combat flows through two phases: **PHASEACCRETIALIS (Accrual Phase)** where everyone races to 20, and **Resolution** where the TABVLA (Queue) builds and resolves.

---

## MOMENTVM Basics

### MOMENTVM Gain
Each PERSONA (Character) has a **MOMENTVM Gain** stat:

```
MOMENTVM Gain = Agility + [Modifiers]
```

This represents how quickly a PERSONA builds toward their next action.

### Tracking MOMENTVM
- Use a **d20 as a tracker** (not rolled — just a counter)
- Start at 0 (or determined by setup)
- Track carries over between phases
- MOMENTVM can go **negative** (see [INTERVENTVS] Tax)

---

## COHORS & CONCORDIA

Combat is organized into **COHORTes (Cohorts)** — groups of PERSONAe working toward shared goals.

### What is a COHORS?

A COHORS is any group with **CONCORDIA (Cooperation)** — the ability to freely coordinate during the ADDENDVM window.

**Typical setup:**
- 1 Player COHORS vs 1 CHORAGVS (DM) Enemy COHORS
- 2 Player COHORTes vs 1 CHORAGVS Enemy COHORS (players split on goals)
- 1 Player COHORS vs 2 CHORAGVS Enemy COHORTes (multiple factions)

### Forming & Splitting COHORTes

COHORTes can form or split **dynamically** during play:

- **Split:** Players disagree on a goal mid-combat → they can split into separate COHORTes
- **Merge:** Former enemies align against a common threat → new CONCORDIA
- **Betrayal:** A PERSONA switches sides → joins a different COHORS's CONCORDIA

The CHORAGVS adjudicates when CONCORDIA makes narrative sense.

### What CONCORDIA Gives You

Within your COHORS (PERSONAe you have CONCORDIA with):

1. **Free ADDENDa** — No special requirements to add onto a cohortmate's TABVLA
2. **Flexible Ordering** — Cohortmates can negotiate who slots where, regardless of raw MOMENTVM order
3. **Shared Strategy** — You're building the TABVLA together

Without CONCORDIA (different COHORS):

1. **Locked Out** — You cannot ADDENDVM to their TABVLA...
2. **Unless You Create an OCCĀSIŌTVRBIDA** — [INTERVENTVS] GAMBITs open the door (see below)

---

## The MOMENTVM Race

### PHASEACCRETIALIS (Accrual Phase)

All PERSONAe add their MOMENTVM Gain **simultaneously**. Keep adding until someone reaches 20+.

```
┌────────────────────────────────────────────────────┐
│ PHASEACCRETIALIS (Accrual Phase)                   │
│                                                    │
│  Everyone ACCRVEs MOMENTVM simultaneously          │
│  ↓                                                 │
│  Someone hits 20+ → They become PERSONA CARDINALIS │
│  ↓                                                 │
│  → Proceed to Resolution Phase                     │
└────────────────────────────────────────────────────┘
```

### PERSONA CARDINALIS (Pivotal Character)

The first PERSONA to reach 20+ becomes the **PERSONA CARDINALIS (Pivotal Character)** — they've won initiative and will lead this resolution phase.

**Important:** PERSONAe who didn't reach 20 **keep their full MOMENTVM**. They didn't spend anything to lose the race — their MOMENTVM is still theirs to spend on ADDENDa.

### Multiple PERSONAe at 20+

If multiple PERSONAe cross 20 on the same "tick":

1. **First tiebreaker:** Higher remainder after subtracting 20
2. **Second tiebreaker:** Roll a d6, higher wins

The winner becomes CARDINALIS; the others queue behind them.

### Example

| PERSONA | MOMENTVM Gain | Before | After ACCRVEing | Remainder | Result |
|---------|---------------|--------|-----------------|-----------|--------|
| Raven | 6 | 15 | 21 | **1** | Queued 2nd |
| Wolf | 4 | 12 | 16 | — | Keeps 16, can ADDENDVM |
| Hawk | 5 | 17 | 22 | **2** | **CARDINALIS** |

Hawk becomes CARDINALIS (remainder 2). Raven queues behind (remainder 1). Wolf didn't hit 20, keeps their 16 MOMENTVM.

---

## Resolution Phase: The TABVLA

When someone becomes CARDINALIS, combat shifts from racing to **TABVLA building**.

### Building the TABVLA (Queue)

1. **PERSONA CARDINALIS declares their GAMBIT** (e.g., "I shoot my blaster")
2. **ADDENDVM window opens**, ordered by highest MOMENTVM → lowest
3. Each PERSONA may spend MOMENTVM to ADDENDVM
4. ADDENDa slot **BEFORE** or **AFTER** the CARDINALIS's GAMBIT in the TABVLA
   - Unless the GAMBIT specifies its ordering when added on
5. The TABVLA is now a **queue of GAMBITs** waiting to resolve

```
┌────────────────────────────────────────────────────┐
│ TABVLA BUILDING                                    │
│                                                    │
│  CARDINALIS: "I shoot my blaster" [SLOT 1]         │
│  ↓                                                 │
│  ADDENDVM window (highest MOMENTVM → lowest):      │
│    Ally A (14 MTM): "I aim assist" [BEFORE]        │
│    Ally B (10 MTM): "I cover fire" [AFTER]         │
│  ↓                                                 │
│  Final TABVLA:                                     │
│    1. Aim Assist (Ally A)                          │
│    2. Shoot Blaster (CARDINALIS)                   │
│    3. Cover Fire (Ally B)                          │
└────────────────────────────────────────────────────┘
```

### TABVLA Resolution

The CHORAGVS resolves the TABVLA, narrating it as **one fluid sequence**. This isn't "you go, then you go" — it's a single cinematic moment built collaboratively.

**Fizzle Rule:** If a GAMBIT no longer applies when it resolves (target dead, situation changed, etc.), it **fizzles** and returns **half the MOMENTVM spent, rounded up**. The PERSONA lost some MOMENTVM because they were planning on doing something that no longer was possible — they're caught flatfooted.

### Free Fizzle: Conditional ADDENDa

When adding a GAMBIT to the TABVLA, you can declare it **conditional** on a specific factor. If that condition isn't satisfied, you **fizzle for free** — full MOMENTVM refund.

**Requirements for Free Fizzle:**
- The condition must be **clearly defined** when adding to the TABVLA
- The CHORAGVS judges whether the condition was satisfied
- The player doesn't get to retroactively decide "actually, that counts"

**Why this exists:** It allows players to plan reactive GAMBITs without wasting resources if the situation doesn't develop as expected.

### After Resolution

1. Subtract 20 from the PERSONA CARDINALIS's tracker
2. If another PERSONA is at 20+ → they become CARDINALIS, repeat Resolution
3. If no one is at 20+ → return to PHASEACCRETIALIS

---

## ADDENDVM System

### How ADDENDVM Works

During the ADDENDVM window, PERSONAe may spend MOMENTVM to join the TABVLA.

1. **Order:** Highest current MOMENTVM → lowest gets first choice
2. **Placement:** Choose to go BEFORE or AFTER in the TABVLA (unless GAMBIT specifies)
3. **Cost:** Subtract ADDENDVM Cost from your MOMENTVM tracker
4. Your GAMBIT enters the queue

### ADDENDVM Costs

Each GAMBIT has an **ADDENDVM Cost** listed. Higher-impact GAMBITs cost more.

| GAMBIT Type | Typical ADDENDVM Cost |
|-------------|----------------------|
| Minor GAMBIT | 3-5 MOMENTVM |
| Standard GAMBIT | 6-10 MOMENTVM |
| Major GAMBIT | 11-15 MOMENTVM |

### ADDENDVM Strategy

- Spending MOMENTVM **delays your next turn** (you're further from 20)
- Coordinating ADDENDa creates powerful combo moments
- The fizzle refund protects you if the situation shifts
- Consider: spend now for teamwork, or save to become CARDINALIS yourself?

---

## [INTERVENTVS] & OCCĀSIŌTVRBIDA

Some GAMBITs have the **[INTERVENTVS] (Intervention)** tag. [INTERVENTVS] is how COHORTes break into each other's TABVLAe.

During the ADDENDVM window, you can only add onto PERSONAe you have **CONCORDIA** with. If the PERSONA CARDINALIS is in a different COHORS, you're locked out.

### OCCĀSIŌTVRBIDA (Chaotic Moment)

When a PERSONA uses an **[INTERVENTVS] GAMBIT**, they force their way into the TABVLA. [INTERVENTVS] GAMBITs are responses to other GAMBITs. They create "moments of chaos" when careful plans break down. Putting the TABVLA into this **OCCĀSIŌTVRBIDA** state allows non-CARDINALIS COHORTes to join the fray!

```
┌────────────────────────────────────────────────────┐
│ [INTERVENTVS] AS DOOR OPENER                       │
│                                                    │
│  COHORS 1 is CARDINALIS. COHORS 2 is locked out.   │
│  ↓                                                 │
│  COHORS 2 member uses [INTERVENTVS] GAMBIT!        │
│  ↓                                                 │
│  OCCĀSIŌTVRBIDA — THE DOOR IS NOW OPEN             │
│  ↓                                                 │
│  Other COHORS 2 members can now ADDENDVM           │
│  (but they pay the [INTERVENTVS] Tax)              │
└────────────────────────────────────────────────────┘
```

### [INTERVENTVS] Rules

1. **Requires [INTERVENTVS] tag** — Only certain GAMBITs can open the door
2. **Pay normal ADDENDVM Cost** — The intervener pays their GAMBIT's cost
3. **Coupling** — Your [INTERVENTVS] GAMBIT **couples** with the GAMBIT it's intervening (see below)
4. **Door opens for your COHORS** — After your [INTERVENTVS], cohortmates can ADDENDVM
5. **Post-Couple Ordering** — Intervening COHORS's follow-up GAMBITs must come AFTER the couple

### Coupling: The Heart of [INTERVENTVS]

When you use [INTERVENTVS], your GAMBIT doesn't just slot into the TABVLA — it **couples** with the GAMBIT you're intervening. The two resolve as a single dramatic unit.

**Why coupling matters:**
- The [INTERVENTVS] IS the reaction — it doesn't make sense before the GAMBIT it's reacting to
- The chaos of the couple is what opens the door for your COHORS
- It creates a clear narrative beat: action → reaction → fallout

### The [INTERVENTVS] Tax

Once the door is open, your cohortmates can ADDENDVM even **without** [INTERVENTVS] GAMBITs — but they pay an **[INTERVENTVS] Tax** on top of their normal ADDENDVM Cost.

| Cost | Description |
|------|-------------|
| **Intervener** | Normal ADDENDVM Cost (they opened the door) |
| **Cohortmates** | Normal ADDENDVM Cost **+ [INTERVENTVS] Tax (5)** |

The [INTERVENTVS] Tax is paid **after** the normal cost. This means MOMENTVM can go **negative**.

### Negative MOMENTVM

If the [INTERVENTVS] Tax drops you below 0, track it as negative:
- `3 → 2 → 1 → 0 → -1 → -2 → -3...`
- Negative MOMENTVM means you're **far** from your next pivot — you'll be racing back up

### [INTERVENTVS] Failure Cascade

If an **[INTERVENTVS] GAMBIT itself fails** (CLADES/CALAMITAS), the OCCĀSIŌTVRBIDA never materializes:
- The door never truly opened — there was no chaos to capitalize on
- **All ADDENDa from the intervening COHORS free fizzle**

The intervener themselves **does not free fizzle** — they committed to the GAMBIT regardless. Only the follow-up ADDENDa are affected.

### Example [INTERVENTVS] GAMBITs

- **Parry** ([INTERVENTVS]): React to an incoming attack, reduce damage
- **Counterspell** ([INTERVENTVS]): Interrupt enemy spellcasting
- **Intercept** ([INTERVENTVS]): Move to block an attack targeting an ally
- **Force Reflector** ([INTERVENTVS]): Redirect an energy attack
- **Overwatch** ([INTERVENTVS]): Prepared shot triggers on enemy GAMBIT

---

## Why This System?

### Player Engagement
No one is "waiting for their turn." During PHASEACCRETIALIS, everyone's watching the race. During Resolution, everyone's deciding whether to ADDENDVM, where to slot in, how to build the TABVLA. The CHORAGVS weaves it all into one narrative beat.

### Dynamic Turn Order
Initiative isn't rolled once and forgotten. It shifts every phase based on MOMENTVM choices. Spend to help allies, and you delay yourself. Save up, and you'll be CARDINALIS more often.

### Narrative Combat
The TABVLA resolves as a single moment, not ping-pong turns. "Raven aims, Hawk fires, Wolf dives for cover" happens together — it *feels* like a SCAENA (Scene).

### Meaningful Choices
- Spend MOMENTVM to ADDENDVM? Or save for your own turn?
- Slot before (set up the CARDINALIS) or after (capitalize on their GAMBIT)?
- [INTERVENTVS] an enemy? Worth the MOMENTVM cost?

---

## Quick Reference

| Term | Latin | Meaning |
|------|-------|---------|
| **MOMENTVM** | MTM | Resource tracked on d20, builds toward turns (can go negative) |
| **PHASEACCRETIALIS** | Accrual Phase | Phase where everyone races to 20 |
| **PERSONA CARDINALIS** | Pivotal Character | First to reach 20+, leads the resolution |
| **COHORS** | Cohort | Group of PERSONAe with shared goals |
| **CONCORDIA** | Cooperation | Relationship that allows free ADDENDa |
| **ADDENDVM** | Add-on | Spend MOMENTVM to join someone else's TABVLA |
| **[INTERVENTVS]** | Intervention | Tag on GAMBITs that open the door to enemy TABVLAe |
| **OCCĀSIŌTVRBIDA** | Chaotic Moment | State when [INTERVENTVS] opens the door |
| **TABVLA** | Queue | Queue of GAMBITs resolved as one moment |
| **SCAENA** | Scene | Gryst's "encounter/combat" |
| **CHORAGVS** | DM | The game master |
| **PERSONA** | Character | A character in the FABVLA (Campaign) |
