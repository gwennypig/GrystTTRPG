# MOMENTVM & Turn System

#ttrpg #rules #core #momentum #initiative

## Overview

Turns are not static initiative order — they're earned through **[<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) (MTM)**, a racing resource that determines when PERSONAe act. Combat flows through two phases: **[<span style="color:#ff3333">PHASEACCRETIALIS</span>](/codex/Cor/Dictionary.md#phaseaccretialis) (Accrual Phase)** where everyone races to 20, and **Resolution** where the [<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla) (Queue) builds and resolves.

---

## MOMENTVM Basics

### MOMENTVM Gain
Each [<span style="color:#e2725b">PERSONA</span>](/codex/Cor/Dictionary.md#persona) (Character) has a **[<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) Gain** stat:

```
MOMENTVM Gain = Agility + [Modifiers]
```

This represents how quickly a [<span style="color:#e2725b">PERSONA</span>](/codex/Cor/Dictionary.md#persona) builds toward their next action.

### Tracking MOMENTVM
- Use a **d20 as a tracker** (not rolled — just a counter)
- Start at 0 (or determined by setup)
- Track carries over between phases
- [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) can go **negative** (see [<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs) Tax)

---

## COHORS & CONCORDIA

Combat is organized into **COHORTes (Cohorts)** — groups of PERSONAe working toward shared goals.

### What is a COHORS?

A [<span style="color:#66023c">COHORS</span>](/codex/Cor/Dictionary.md#cohors) is any group with **[<span style="color:#66023c">CONCORDIA</span>](/codex/Cor/Dictionary.md#concordia) (Cooperation)** — the ability to freely coordinate during the [<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm) window.

**Typical setup:**
- 1 Player [<span style="color:#66023c">COHORS</span>](/codex/Cor/Dictionary.md#cohors) vs 1 [<span style="color:#9d8015">CHORAGVS</span>](/codex/Cor/Dictionary.md#choragvs) (DM) Enemy [<span style="color:#66023c">COHORS</span>](/codex/Cor/Dictionary.md#cohors)
- 2 Player COHORTes vs 1 [<span style="color:#9d8015">CHORAGVS</span>](/codex/Cor/Dictionary.md#choragvs) Enemy [<span style="color:#66023c">COHORS</span>](/codex/Cor/Dictionary.md#cohors) (players split on goals)
- 1 Player [<span style="color:#66023c">COHORS</span>](/codex/Cor/Dictionary.md#cohors) vs 2 [<span style="color:#9d8015">CHORAGVS</span>](/codex/Cor/Dictionary.md#choragvs) Enemy COHORTes (multiple factions)

### Forming & Splitting COHORTes

COHORTes can form or split **dynamically** during play:

- **Split:** Players disagree on a goal mid-combat → they can split into separate COHORTes
- **Merge:** Former enemies align against a common threat → new [<span style="color:#66023c">CONCORDIA</span>](/codex/Cor/Dictionary.md#concordia)
- **Betrayal:** A [<span style="color:#e2725b">PERSONA</span>](/codex/Cor/Dictionary.md#persona) switches sides → joins a different [<span style="color:#66023c">COHORS</span>](/codex/Cor/Dictionary.md#cohors)'s [<span style="color:#66023c">CONCORDIA</span>](/codex/Cor/Dictionary.md#concordia)

The [<span style="color:#9d8015">CHORAGVS</span>](/codex/Cor/Dictionary.md#choragvs) adjudicates when [<span style="color:#66023c">CONCORDIA</span>](/codex/Cor/Dictionary.md#concordia) makes narrative sense.

### What CONCORDIA Gives You

Within your [<span style="color:#66023c">COHORS</span>](/codex/Cor/Dictionary.md#cohors) (PERSONAe you have [<span style="color:#66023c">CONCORDIA</span>](/codex/Cor/Dictionary.md#concordia) with):

1. **Free ADDENDa** — No special requirements to add onto a cohortmate's [<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla)
2. **Flexible Ordering** — Cohortmates can negotiate who slots where, regardless of raw [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) order
3. **Shared Strategy** — You're building the [<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla) together

Without [<span style="color:#66023c">CONCORDIA</span>](/codex/Cor/Dictionary.md#concordia) (different [<span style="color:#66023c">COHORS</span>](/codex/Cor/Dictionary.md#cohors)):

1. **Locked Out** — You cannot [<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm) to their [<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla)...
2. **Unless You Create an [<span style="color:#9d64f2">OCCĀSIŌTVRBIDA</span>](/codex/Cor/Dictionary.md#occ-si-tvrbida)** — [<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs) GAMBITs open the door (see below)

---

## The MOMENTVM Race

### PHASEACCRETIALIS (Accrual Phase)

All PERSONAe add their [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) Gain **simultaneously**. Keep adding until someone reaches 20+.

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

The first [<span style="color:#e2725b">PERSONA</span>](/codex/Cor/Dictionary.md#persona) to reach 20+ becomes the **[<span style="color:#e2725b">PERSONA</span>](/codex/Cor/Dictionary.md#persona) [<span style="color:#ffd500">CARDINALIS</span>](/codex/Cor/Dictionary.md#cardinalis) (Pivotal Character)** — they've won initiative and will lead this resolution phase.

**Important:** PERSONAe who didn't reach 20 **keep their full [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm)**. They didn't spend anything to lose the race — their [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) is still theirs to spend on ADDENDa.

### Multiple PERSONAe at 20+

If multiple PERSONAe cross 20 on the same "tick":

1. **First tiebreaker:** Higher remainder after subtracting 20
2. **Second tiebreaker:** Roll a d6, higher wins

The winner becomes [<span style="color:#ffd500">CARDINALIS</span>](/codex/Cor/Dictionary.md#cardinalis); the others queue behind them.

### Example

| [<span style="color:#e2725b">PERSONA</span>](/codex/Cor/Dictionary.md#persona) | [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) Gain | Before | After ACCRVEing | Remainder | Result |
|---------|---------------|--------|-----------------|-----------|--------|
| Raven | 6 | 15 | 21 | **1** | Queued 2nd |
| Wolf | 4 | 12 | 16 | — | Keeps 16, can [<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm) |
| Hawk | 5 | 17 | 22 | **2** | **[<span style="color:#ffd500">CARDINALIS</span>](/codex/Cor/Dictionary.md#cardinalis)** |

Hawk becomes [<span style="color:#ffd500">CARDINALIS</span>](/codex/Cor/Dictionary.md#cardinalis) (remainder 2). Raven queues behind (remainder 1). Wolf didn't hit 20, keeps their 16 [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm).

---

## Resolution Phase: The TABVLA

When someone becomes [<span style="color:#ffd500">CARDINALIS</span>](/codex/Cor/Dictionary.md#cardinalis), combat shifts from racing to **[<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla) building**.

### Building the TABVLA (Queue)

1. **[<span style="color:#e2725b">PERSONA</span>](/codex/Cor/Dictionary.md#persona) [<span style="color:#ffd500">CARDINALIS</span>](/codex/Cor/Dictionary.md#cardinalis) declares their [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit)** (e.g., "I shoot my blaster")
2. **[<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm) window opens**, ordered by highest [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) → lowest
3. Each [<span style="color:#e2725b">PERSONA</span>](/codex/Cor/Dictionary.md#persona) may spend [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) to [<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm)
4. ADDENDa slot **BEFORE** or **AFTER** the [<span style="color:#ffd500">CARDINALIS</span>](/codex/Cor/Dictionary.md#cardinalis)'s [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) in the [<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla)
   - Unless the [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) specifies its ordering when added on
5. The [<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla) is now a **queue of GAMBITs** waiting to resolve

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

The [<span style="color:#9d8015">CHORAGVS</span>](/codex/Cor/Dictionary.md#choragvs) resolves the [<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla), narrating it as **one fluid sequence**. This isn't "you go, then you go" — it's a single cinematic moment built collaboratively.

**Fizzle Rule:** If a [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) no longer applies when it resolves (target dead, situation changed, etc.), it **fizzles** and returns **half the [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) spent, rounded up**. The [<span style="color:#e2725b">PERSONA</span>](/codex/Cor/Dictionary.md#persona) lost some [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) because they were planning on doing something that no longer was possible — they're caught flatfooted.

### Free Fizzle: Conditional ADDENDa

When adding a [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) to the [<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla), you can declare it **conditional** on a specific factor. If that condition isn't satisfied, you **fizzle for free** — full [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) refund.

**Requirements for Free Fizzle:**
- The condition must be **clearly defined** when adding to the [<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla)
- The [<span style="color:#9d8015">CHORAGVS</span>](/codex/Cor/Dictionary.md#choragvs) judges whether the condition was satisfied
- The player doesn't get to retroactively decide "actually, that counts"

**Why this exists:** It allows players to plan reactive GAMBITs without wasting resources if the situation doesn't develop as expected.

### After Resolution

1. Subtract 20 from the [<span style="color:#e2725b">PERSONA</span>](/codex/Cor/Dictionary.md#persona) [<span style="color:#ffd500">CARDINALIS</span>](/codex/Cor/Dictionary.md#cardinalis)'s tracker
2. If another [<span style="color:#e2725b">PERSONA</span>](/codex/Cor/Dictionary.md#persona) is at 20+ → they become [<span style="color:#ffd500">CARDINALIS</span>](/codex/Cor/Dictionary.md#cardinalis), repeat Resolution
3. If no one is at 20+ → return to [<span style="color:#ff3333">PHASEACCRETIALIS</span>](/codex/Cor/Dictionary.md#phaseaccretialis)

---

## ADDENDVM System

### How ADDENDVM Works

During the [<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm) window, PERSONAe may spend [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) to join the [<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla).

1. **Order:** Highest current [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) → lowest gets first choice
2. **Placement:** Choose to go BEFORE or AFTER in the [<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla) (unless [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) specifies)
3. **Cost:** Subtract [<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm) Cost from your [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) tracker
4. Your [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) enters the queue

### ADDENDVM Costs

Each [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) has an **[<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm) Cost** listed. Higher-impact GAMBITs cost more.

| [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) Type | Typical [<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm) Cost |
|-------------|----------------------|
| Minor [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) | 3-5 [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) |
| Standard [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) | 6-10 [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) |
| Major [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) | 11-15 [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) |

### ADDENDVM Strategy

- Spending [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) **delays your next turn** (you're further from 20)
- Coordinating ADDENDa creates powerful combo moments
- The fizzle refund protects you if the situation shifts
- Consider: spend now for teamwork, or save to become [<span style="color:#ffd500">CARDINALIS</span>](/codex/Cor/Dictionary.md#cardinalis) yourself?

---

## [INTERVENTVS] & OCCĀSIŌTVRBIDA

Some GAMBITs have the **[<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs) (Intervention)** tag. [<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs) is how COHORTes break into each other's TABVLAe.

During the [<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm) window, you can only add onto PERSONAe you have **[<span style="color:#66023c">CONCORDIA</span>](/codex/Cor/Dictionary.md#concordia)** with. If the [<span style="color:#e2725b">PERSONA</span>](/codex/Cor/Dictionary.md#persona) [<span style="color:#ffd500">CARDINALIS</span>](/codex/Cor/Dictionary.md#cardinalis) is in a different [<span style="color:#66023c">COHORS</span>](/codex/Cor/Dictionary.md#cohors), you're locked out.

### OCCĀSIŌTVRBIDA (Chaotic Moment)

When a [<span style="color:#e2725b">PERSONA</span>](/codex/Cor/Dictionary.md#persona) uses an **[<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs) [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit)**, they force their way into the [<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla). [<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs) GAMBITs are responses to other GAMBITs. They create "moments of chaos" when careful plans break down. Putting the [<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla) into this **[<span style="color:#9d64f2">OCCĀSIŌTVRBIDA</span>](/codex/Cor/Dictionary.md#occ-si-tvrbida)** state allows non-[<span style="color:#ffd500">CARDINALIS</span>](/codex/Cor/Dictionary.md#cardinalis) COHORTes to join the fray!

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

1. **Requires [<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs) tag** — Only certain GAMBITs can open the door
2. **Pay normal [<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm) Cost** — The intervener pays their [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit)'s cost
3. **Coupling** — Your [<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs) [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) **couples** with the [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) it's intervening (see below)
4. **Door opens for your [<span style="color:#66023c">COHORS</span>](/codex/Cor/Dictionary.md#cohors)** — After your [<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs), cohortmates can [<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm)
5. **Post-Couple Ordering** — Intervening [<span style="color:#66023c">COHORS</span>](/codex/Cor/Dictionary.md#cohors)'s follow-up GAMBITs must come AFTER the couple

### Coupling: The Heart of [INTERVENTVS]

When you use [<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs), your [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) doesn't just slot into the [<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla) — it **couples** with the [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) you're intervening. The two resolve as a single dramatic unit.

**Why coupling matters:**
- The [<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs) IS the reaction — it doesn't make sense before the [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) it's reacting to
- The chaos of the couple is what opens the door for your [<span style="color:#66023c">COHORS</span>](/codex/Cor/Dictionary.md#cohors)
- It creates a clear narrative beat: action → reaction → fallout

### The [INTERVENTVS] Tax

Once the door is open, your cohortmates can [<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm) even **without** [<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs) GAMBITs — but they pay an **[<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs) Tax** on top of their normal [<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm) Cost.

| Cost | Description |
|------|-------------|
| **Intervener** | Normal [<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm) Cost (they opened the door) |
| **Cohortmates** | Normal [<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm) Cost **+ [<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs) Tax (5)** |

The [<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs) Tax is paid **after** the normal cost. This means [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) can go **negative**.

### Negative MOMENTVM

If the [<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs) Tax drops you below 0, track it as negative:
- `3 → 2 → 1 → 0 → -1 → -2 → -3...`
- Negative [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) means you're **far** from your next pivot — you'll be racing back up

### [INTERVENTVS] Failure Cascade

If an **[<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs) [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) itself fails** ([<span style="color:#8c0303">CLADES</span>](/codex/Cor/Dictionary.md#clades)/[<span style="color:#ff0000">CALAMITAS</span>](/codex/Cor/Dictionary.md#calamitas)), the [<span style="color:#9d64f2">OCCĀSIŌTVRBIDA</span>](/codex/Cor/Dictionary.md#occ-si-tvrbida) never materializes:
- The door never truly opened — there was no chaos to capitalize on
- **All ADDENDa from the intervening [<span style="color:#66023c">COHORS</span>](/codex/Cor/Dictionary.md#cohors) free fizzle**

The intervener themselves **does not free fizzle** — they committed to the [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit) regardless. Only the follow-up ADDENDa are affected.

### Example [INTERVENTVS] GAMBITs

- **Parry** ([<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs)): React to an incoming attack, reduce damage
- **Counterspell** ([<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs)): Interrupt enemy spellcasting
- **Intercept** ([<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs)): Move to block an attack targeting an ally
- **Force Reflector** ([<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs)): Redirect an energy attack
- **Overwatch** ([<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs)): Prepared shot triggers on enemy [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit)

---

## Why This System?

### Player Engagement
No one is "waiting for their turn." During [<span style="color:#ff3333">PHASEACCRETIALIS</span>](/codex/Cor/Dictionary.md#phaseaccretialis), everyone's watching the race. During Resolution, everyone's deciding whether to [<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm), where to slot in, how to build the [<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla). The [<span style="color:#9d8015">CHORAGVS</span>](/codex/Cor/Dictionary.md#choragvs) weaves it all into one narrative beat.

### Dynamic Turn Order
Initiative isn't rolled once and forgotten. It shifts every phase based on [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) choices. Spend to help allies, and you delay yourself. Save up, and you'll be [<span style="color:#ffd500">CARDINALIS</span>](/codex/Cor/Dictionary.md#cardinalis) more often.

### Narrative Combat
The [<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla) resolves as a single moment, not ping-pong turns. "Raven aims, Hawk fires, Wolf dives for cover" happens together — it *feels* like a [<span style="color:#68001a">SCAENA</span>](/codex/Cor/Dictionary.md#scaena) (Scene).

### Meaningful Choices
- Spend [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) to [<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm)? Or save for your own turn?
- Slot before (set up the [<span style="color:#ffd500">CARDINALIS</span>](/codex/Cor/Dictionary.md#cardinalis)) or after (capitalize on their [<span style="color:#70e697">GAMBIT</span>](/codex/Cor/Dictionary.md#gambit))?
- [<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs) an enemy? Worth the [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) cost?

---

## Quick Reference

| Term | Latin | Meaning |
|------|-------|---------|
| **[<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm)** | MTM | Resource tracked on d20, builds toward turns (can go negative) |
| **[<span style="color:#ff3333">PHASEACCRETIALIS</span>](/codex/Cor/Dictionary.md#phaseaccretialis)** | Accrual Phase | Phase where everyone races to 20 |
| **[<span style="color:#e2725b">PERSONA</span>](/codex/Cor/Dictionary.md#persona) [<span style="color:#ffd500">CARDINALIS</span>](/codex/Cor/Dictionary.md#cardinalis)** | Pivotal Character | First to reach 20+, leads the resolution |
| **[<span style="color:#66023c">COHORS</span>](/codex/Cor/Dictionary.md#cohors)** | Cohort | Group of PERSONAe with shared goals |
| **[<span style="color:#66023c">CONCORDIA</span>](/codex/Cor/Dictionary.md#concordia)** | Cooperation | Relationship that allows free ADDENDa |
| **[<span style="color:#43b3ae">ADDENDVM</span>](/codex/Cor/Dictionary.md#addendvm)** | Add-on | Spend [<span style="color:#ff3333">MOMENTVM</span>](/codex/Cor/Dictionary.md#momentvm) to join someone else's [<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla) |
| **[<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs)** | Intervention | Tag on GAMBITs that open the door to enemy TABVLAe |
| **[<span style="color:#9d64f2">OCCĀSIŌTVRBIDA</span>](/codex/Cor/Dictionary.md#occ-si-tvrbida)** | Chaotic Moment | State when [<span style="color:#9d64f2">[INTERVENTVS]</span>](/codex/Cor/Tags.md#interventvs) opens the door |
| **[<span style="color:#708090">TABVLA</span>](/codex/Cor/Dictionary.md#tabvla)** | Queue | Queue of GAMBITs resolved as one moment |
| **[<span style="color:#68001a">SCAENA</span>](/codex/Cor/Dictionary.md#scaena)** | Scene | Gryst's "encounter/combat" |
| **[<span style="color:#9d8015">CHORAGVS</span>](/codex/Cor/Dictionary.md#choragvs)** | DM | The game master |
| **[<span style="color:#e2725b">PERSONA</span>](/codex/Cor/Dictionary.md#persona)** | Character | A character in the [<span style="color:#dc143c">FABVLA</span>](/codex/Cor/Dictionary.md#fabvla) (Campaign) |
