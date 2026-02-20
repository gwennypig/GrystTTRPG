# Core Mechanic

#ttrpg #rules #mechanics #dice

Gryst uses a **two-axis resolution system**. One axis measures fate — whether your intent lands at all. The other measures physics — how reality responds when it does.

---

## The Two Dice

### Tessera Fati — The Dice of Fate

*"Did it happen?"*

The **Tessera Fati** resolve whether your action succeeds. They are **undefined by design** — the [<span style="color:#9d8015">CHORAGVS</span>](codex/Cor/Dictionary.md#choragvs) selects whatever dice fit the dramatic weight of the moment. A d4, d6, d10, d20, percentile, coin flip. Fate is negotiable.

These dice map to the **four outcomes**:

| Outcome | Latin | Meaning |
|---------|-------|---------|
| **Critical Success** | *Triumphus* | Exceptional result, bonus effects |
| **Success** | *Successus* | You achieve what you wanted |
| **Failure** | *Clades* | You don't achieve it, complications may arise |
| **Critical Failure** | *Calamitas* | Disaster, significant consequences |

The Tessera Fati are the **drama engine**. The universe deciding if your story goes the way you intended.

### Icosaedrum Magnitudinis — The d20 of Magnitude

*"How much?"*

The **Icosaedrum Magnitudinis** (also called the *Icosaedrum Grysti*) is always a d20. When you reach into reality and twist Gryst, this die measures how hard the universe pushes back. How far does your will extend? How much force? How much power?

The Icosaedrum is the **physics engine**. Reality is consistent. Gryst responds predictably to manipulation. Physics doesn't negotiate.

---

## The Two Axes

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   TESSERA FATI              ICOSAEDRUM MAGNITUDINIS         │
│   ─────────────             ────────────────────────        │
│                                                             │
│   "Did it happen?"          "How much happened?"            │
│                                                             │
│   Variable dice             Always d20                      │
│   CHORAGVS's choice               Consistent                      │
│   Negotiated                Calculated                      │
│   Narrative/Drama           Physics/Reality                 │
│   Fate is mutable           Gryst is predictable            │
│                                                             │
│   ───────────────────────────────────────────────────────   │
│                                                             │
│   One is DRAMA.             One is PHYSICS.                 │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

| Axis | Die | Question | Nature |
|------|-----|----------|--------|
| **Tessera Fati** | [<span style="color:#9d8015">CHORAGVS</span>](codex/Cor/Dictionary.md#choragvs)'s choice | "Did it happen?" | Drama — fate is negotiable |
| **Icosaedrum Magnitudinis** | d20 | "How much?" | Physics — Gryst is consistent |

---

## Where the Structure Lives

The two dice systems are resolution *engines* — but the structure lives in **Gambits**.

A Gambit isn't just "roll to see what happens." It's a complete package:
- The **action** (what you're doing)
- The **four outcomes** (what happens on Triumphus, Successus, Clades, Calamitas)
- The **Mag formulas** (how the Icosaedrum calculates effects)

When a Module grants you a [<span style="color:#70e697">GAMBIT</span>](codex/Cor/Dictionary.md#gambit), you're getting pre-authored outcomes, not improvising them at the table. The Tessera Fati just selects which outcome fires. The Icosaedrum calculates the numbers within that outcome.

See the [Gambits](rules/GAMBITs.md) page for the full breakdown.

---

## Resolution Flow

A typical action involves both axes:

```
┌────────────────────────────────────────────────────┐
│ THE FLOW                                           │
│                                                    │
│  TESSERA FATI: Did the attack hit?                 │
│  ↓                                                 │
│  Triumphus / Successus / Clades / Calamitas        │
│  ↓                                                 │
│  If hit → ICOSAEDRUM MAGNITUDINIS determines       │
│           damage, range, effect intensity          │
│                                                    │
│  Fate resolves WHETHER.                            │
│  Magnitude resolves HOW MUCH.                      │
└────────────────────────────────────────────────────┘
```

**Fate is primary.** The Tessera Fati resolve whether something occurs. The Icosaedrum kicks in afterward to determine the magnitude of effects.

---

## Tessera Fati: The Drama Engine

### Any Dice, Any Distribution

As long as all parties agree on a mapping to the four outcomes, **any dice work**:

| Method | How It Works |
|--------|--------------|
| **d4** | 1 = Calamitas, 2 = Clades, 3 = Successus, 4 = Triumphus |
| **d6** | 1 = Calamitas, 2-3 = Clades, 4-5 = Successus, 6 = Triumphus |
| **d20** | 1 = Calamitas, 2-7 = Clades, 8-17 = Successus, 18-20 = Triumphus |
| **Percentile** | [<span style="color:#9d8015">CHORAGVS</span>](codex/Cor/Dictionary.md#choragvs) defines ranges based on difficulty |
| **2d6** | Bell curve distribution, [<span style="color:#9d8015">CHORAGVS</span>](codex/Cor/Dictionary.md#choragvs) defines thresholds |
| **Coin** | Heads = Successus, Tails = Clades (no crits) |
| **Custom** | Whatever the table agrees on |

The undefined nature of the Tessera Fati is intentional. Fate is mutable, negotiated, situation-dependent.

### The CHORAGVS Decides

The **[<span style="color:#9d8015">CHORAGVS</span>](codex/Cor/Dictionary.md#choragvs) determines the best dice and distribution** for any given Gambit. Factors:

- **Difficulty** — Harder tasks might have narrower success ranges
- **Risk** — High-stakes actions might have wider Calamitas ranges
- **Drama** — Sometimes you want extremes more likely
- **Speed** — d4 is faster than percentile calculation

### Negotiated Gambits

When a player proposes a [<span style="color:#70e697">GAMBIT</span>](codex/Cor/Dictionary.md#gambit), the [<span style="color:#9d8015">CHORAGVS</span>](codex/Cor/Dictionary.md#choragvs) and player **come to a consensus** on what's fair:

```
┌────────────────────────────────────────────────────┐
│ GAMBIT NEGOTIATION                                 │
│                                                    │
│  Player: "I want to leap across the chasm and      │
│           grab the artifact before the cultist."   │
│                                                    │
│  DM: "Okay, that's risky. Let's use a d6:          │
│       1 = Fall into chasm (Calamitas)              │
│       2-3 = Miss the grab, both scrambling         │
│       4-5 = You get the artifact                   │
│       6 = Get it AND knock cultist back"           │
│                                                    │
│  Player: "Deal."                                   │
└────────────────────────────────────────────────────┘
```

This negotiation IS the game. The Tessera Fati provide structure; the table provides judgment.

---

## Icosaedrum Magnitudinis: The Physics Engine

### Always d20

The Icosaedrum Magnitudinis is **always a d20**. Reality is consistent.

Players already bring d20s for tracking Momentum. We use them for all Mag-related calculations too.

### What Uses the Icosaedrum?

**Effect calculations** that scale with Magnitūdō:

```
Damage = Base + (Effective Mag × multiplier)
Range = Base + (Effective Mag × 5) meters
Duration = Effective Mag rounds
```

When you need to **roll for variable magnitude** (damage, contested effects):

- Damage roll: `d20 + Weapon Mag` vs armor/threshold
- Contested effect: Both sides roll `d20 + Mag`, higher wins
- Variable outcome: `d20 + Mag` determines intensity

The Icosaedrum handles **numbers**, not success/failure. That's the Tessera Fati's domain.

---

## Module GAMBITs vs. Core GAMBITs

### Most Gambits Come From Modules

When you attack with a rifle, you're not using a generic "attack gambit." You're using the **specific Gambit provided by your weapon's Module**.

```
┌─────────────────────────────────────────────────────────────┐
│ EXAMPLE: FIRING A RIFLE                                     │
│                                                             │
│   LOCULUS: Standard Rifle Frame (the physical object)       │
│   MODULE: Conventional Firearm Mechanism [Rifle]            │
│   GAMBIT: "Fire Conventional Single Round"                  │
│                                                             │
│   This Gambit has pre-authored outcomes:                    │
│                                                             │
│   TRIUMPHUS: Clean hit + bonus (penetration, stagger, etc.) │
│   SUCCESSUS: Hit, deal damage based on Mag                  │
│   CLADES: Miss, round expended                              │
│   CALAMITAS: Misfire, jam, or worse                         │
│                                                             │
│   The Module defines these. You're not improvising.         │
└─────────────────────────────────────────────────────────────┘

Note: A **Loculus** is an object that holds Modules — not a body slot.
A gunblade would be ONE Loculus containing both a Blade Module and 
a Firearm Module, granting Gambits from both.
```

Different Modules provide different Gambits with different outcomes:

| Module | Gambit | Triumphus includes... |
|--------|--------|----------------------|
| Conventional Firearm Mechanism | Fire Single Round | Penetration, stagger |
| Thermal Lance Array | Focused Burn | Target ignites |
| Psi-Amp Cortex | Mind Probe | Full memory access |
| Grav-Boot System | Assisted Leap | Graceful arc, bonus distance |

The **enum** (Rifle, Pistol, SMG, etc.) can modify specific parameters within the same Gambit — range, damage multiplier, ammo consumption — while keeping the same outcome structure.

### Core GAMBITs Are Fallbacks

Core GAMBITs exist for situations where **no Module provides a better option**:

```
┌────────────────────────────────────────────────────┐
│ CORE ATTACK GAMBIT (Fallback)                      │
│ ─────────────────────────────────────────────────  │
│                                                    │
│ Use when: No weapon Module, improvised attack,     │
│           punching someone with your bare fists    │
│                                                    │
│ TRIUMPHUS: Hit with bonus effect (CHORAGVS determines)   │
│ SUCCESSUS: Clean hit, deal base damage             │
│ CLADES: Miss, possible minor complication          │
│ CALAMITAS: Something goes wrong                    │
│                                                    │
│ This is GENERIC. Module GAMBITs are SPECIFIC.      │
│ If you have a Module, use its Gambit instead.      │
└────────────────────────────────────────────────────┘
```

### DM Adjustments

Regardless of whether it's a Module [<span style="color:#70e697">GAMBIT</span>](codex/Cor/Dictionary.md#gambit) or Core [<span style="color:#70e697">GAMBIT</span>](codex/Cor/Dictionary.md#gambit), the [<span style="color:#9d8015">CHORAGVS</span>](codex/Cor/Dictionary.md#choragvs) adjusts the **Tessera Fati dice and ranges** based on circumstances:

| Situation | Adjustment |
|-----------|------------|
| Easy shot (close, stationary) | Wider Successus range |
| Hard shot (far, moving, cover) | Narrower Successus range |
| Desperate attack | Wider Calamitas range |
| Careful aim | Wider Triumphus range |

### Other Core GAMBITs

*[TODO: Define these as fallbacks]*

- **Core Defense** — Dodge/block when no defensive Module applies
- **Core Skill** — Attempt tasks based on raw ability
- **Core Social** — Persuade/deceive without specialized gear
- **Core Movement** — Navigate hazards without movement Modules

---

## Putting It Together

### Example: Rifle Attack (Module GAMBIT)

```
┌─────────────────────────────────────────────────────────────┐
│ SETUP                                                       │
│                                                             │
│   LOCULUS: Standard Rifle Frame (the object itself)         │
│   MODULE: Conventional Firearm Mechanism [Rifle]            │
│                                                             │
│   This Module grants: "Fire Conventional Single Round"      │
│   with pre-authored outcomes for rifles                     │
└─────────────────────────────────────────────────────────────┘

1. Player: "I shoot the cultist with my rifle."

2. CHORAGVS checks the GAMBIT: "Fire Conventional Single Round [Rifle]"
   → Outcomes are pre-defined by the Module
   → CHORAGVS selects Tessera Fati: "Roll d6."

3. Player rolls Tessera Fati: 5 (Successus)
   → The Gambit's Successus outcome: "Hit, deal damage based on Mag"

4. Player calculates damage using Icosaedrum:
   → Rifle Mag 4 + Marksmanship skill +2 = 6 damage

5. DM: "The cultist takes 6 damage and staggers back."
```

### Example: Triumphus with Module GAMBIT

```
1. Player rolls Tessera Fati: 6 on d6 (Triumphus!)

2. CHORAGVS checks the Module GAMBIT's Triumphus outcome:
   → "Fire Conventional Single Round [Rifle]" says:
     "Clean hit + penetration (ignores light cover/armor)"

3. Player calculates: 6 base damage, penetrates the cultist's vest

4. CHORAGVS expands the interface: "The round punches through their 
   armor — they stumble, clutching the wound. Blood on the wall."
```

### Example: Thermal Lance (Different Module, Different Gambit)

```
┌─────────────────────────────────────────────────────────────┐
│ Different Module = Different Gambit = Different Outcomes    │
└─────────────────────────────────────────────────────────────┘

1. Player: "I fire my thermal lance at the cultist."

2. CHORAGVS checks the GAMBIT: "Focused Burn" from Thermal Lance Array
   → Different outcomes than a conventional firearm

3. Player rolls Tessera Fati: 6 (Triumphus!)
   → Gambit's Triumphus: "Target ignites, ongoing burn damage"

4. DM: "The beam catches them center mass — they ignite. 
   Fire spreads to their robes. They're screaming."
```

### Example: Contested Effect

```
1. Psion uses "Mind Probe" Gambit from their Psi-Amp Module.

2. DM: "Roll opposing Icosaedra — your will against their mental defenses."
   → Both roll d20 + their relevant Mag

3. Psion: d20 (14) + Psi-Amp Mag (3) = 17
   Knight: d20 (11) + Mental Resistance (2) = 13

4. Psion wins by 4 — per the GAMBIT, the probe holds for 4 rounds.
```

### Example: No Module (Core GAMBIT Fallback)

```
1. Player: "I punch the cultist in the face."
   → No unarmed combat Module equipped

2. DM: "No Module applies. Using Core Attack Gambit. Roll d6."
   → Generic outcomes, CHORAGVS determines specifics

3. Player rolls: 4 (Successus)

4. DM: "You connect. Base unarmed damage... that's 2. 
   He reels but he's not down."
```

---

## Design Philosophy

### Why Two Axes?

The separation reflects a deeper truth about how stories work:

**Fate** is capricious, negotiable, and dramatic. The same action might succeed gloriously or fail catastrophically depending on the moment. This is why the Tessera Fati are undefined — they flex to serve the narrative.

**Physics** is consistent, calculable, and fair. When you channel Gryst, the universe responds predictably. A fireball with Mag 5 always has roughly the same destructive potential. This is why the Icosaedrum is always d20 — reliability in chaos.

Together, they create tension: fate decides *if* you succeed, physics decides *what that means*.

### Why Dice-Agnostic Fate?

1. **DM Control** — The [<span style="color:#9d8015">CHORAGVS</span>](codex/Cor/Dictionary.md#choragvs) can tune probability to the fiction
2. **Flexibility** — Different situations deserve different odds
3. **Negotiation as Play** — Discussing the gambit IS roleplaying
4. **No Universal Balance** — Not everything should have equal odds

### Why d20 for Magnitude?

1. **Consistency** — One die type for all physics calculations
2. **Availability** — Already at the table for Momentum tracking
3. **Tradition** — Familiar to most players
4. **Range** — 1-20 + mods provides meaningful spread

### The Consensus

The system is named after a fictional galactic bureaucracy, and appropriately, it runs on **consensus**:

- Players and DM agree on Gambits
- Players and DM agree on which Tessera Fati to use
- Players and DM agree on outcome ranges
- Rules provide framework, not dictation

---

## Quick Reference

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│  TESSERA FATI                 ICOSAEDRUM MAGNITUDINIS       │
│  (Fate Dice)                  (d20 of Magnitude)            │
│                                                             │
│  "Did it happen?"             "How much?"                   │
│  Variable dice                Always d20                    │
│  Drama                        Physics                       │
│                                                             │
│  → Triumphus                  → d20 + Mag calculations      │
│  → Successus                  → Damage, range, duration     │
│  → Clades                     → Contested rolls             │
│  → Calamitas                  → Effect intensity            │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

### Resolution Flow
```
Tessera Fati (did it happen?) → If yes → Icosaedrum (how much?)
         FATE                              PHYSICS
```
