# Core Mechanic

#ttrpg #rules #mechanics #dice

Gryst uses a **two-axis resolution system**. One axis measures fate — whether your intent lands at all. The other measures physics — how reality responds when it does.

---

## The Two Dice

### Tessera Fati — The Dice of Fate

*"Did it happen?"*

The **Tessera Fati** resolve whether your action succeeds. They are **undefined by design** — the DM selects whatever dice fit the dramatic weight of the moment. A d4, d6, d10, d20, percentile, coin flip. Fate is negotiable.

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
│   DM's choice               Consistent                      │
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
| **Tessera Fati** | DM's choice | "Did it happen?" | Drama — fate is negotiable |
| **Icosaedrum Magnitudinis** | d20 | "How much?" | Physics — Gryst is consistent |

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
| **Percentile** | DM defines ranges based on difficulty |
| **2d6** | Bell curve distribution, DM defines thresholds |
| **Coin** | Heads = Successus, Tails = Clades (no crits) |
| **Custom** | Whatever the table agrees on |

The undefined nature of the Tessera Fati is intentional. Fate is mutable, negotiated, situation-dependent.

### The DM Decides

The **DM determines the best dice and distribution** for any given Gambit. Factors:

- **Difficulty** — Harder tasks might have narrower success ranges
- **Risk** — High-stakes actions might have wider Calamitas ranges
- **Drama** — Sometimes you want extremes more likely
- **Speed** — d4 is faster than percentile calculation

### Negotiated Gambits

When a player proposes a Gambit, the DM and player **come to a consensus** on what's fair:

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

## Standardized Gambits

Some Gambits are so common that we provide **standardized templates**. The DM can use these as-is or modify them.

### The Attack Gambit

The most common reusable Gambit: **did your attack hit?**

```
┌────────────────────────────────────────────────────┐
│ STANDARD ATTACK GAMBIT                             │
│ ─────────────────────────────────────────────────  │
│                                                    │
│ Tessera Fati: [DM's choice based on difficulty]    │
│                                                    │
│ TRIUMPHUS: Hit with bonus effect                   │
│   → Full damage + critical effect (DM determines)  │
│   → Examples: Extra damage, target staggered,      │
│               hit a weak point, disarm             │
│                                                    │
│ SUCCESSUS: Clean hit                               │
│   → Deal damage (calculate with Icosaedrum)        │
│                                                    │
│ CLADES: Miss                                       │
│   → No damage                                      │
│   → Minor complication possible (position lost,    │
│     attention drawn, etc.)                         │
│                                                    │
│ CALAMITAS: Critical miss                           │
│   → No damage AND something goes wrong             │
│   → Examples: Weapon jams, friendly fire risk,     │
│               overextended, fall prone             │
└────────────────────────────────────────────────────┘
```

### Modifying the Attack Gambit

The DM adjusts the **dice and ranges** based on circumstances:

| Situation | Adjustment |
|-----------|------------|
| Easy shot (close, stationary) | Wider Successus range |
| Hard shot (far, moving, cover) | Narrower Successus range |
| Desperate attack | Wider Calamitas range |
| Careful aim | Wider Triumphus range |

### Other Standardized Gambits

*[TODO: Define additional standard gambits]*

- **Defense Gambit** — Did you avoid the attack?
- **Skill Gambit** — Did you succeed at a task?
- **Social Gambit** — Did you convince them?
- **Movement Gambit** — Did you reach your destination safely?

---

## Putting It Together

### Example: Full Attack Sequence

```
1. Player: "I shoot the cultist with my rifle."

2. DM: "Standard attack. Roll d6." (selects Tessera Fati)

3. Player rolls Tessera Fati: 5 (Successus — fate favors the shot)

4. DM: "Hit! Roll damage."

5. Player rolls Icosaedrum: Rifle Mag 4 + Marksmanship +2 = 6 damage
   (physics determines the wound)

6. DM: "The cultist takes 6 damage and staggers back."
```

### Example: Triumphus Attack

```
1. Player rolls Tessera Fati: 6 on d6 (Triumphus!)
   → Fate grants an exceptional outcome

2. DM: "Critical hit! You hit a weak point."

3. Player rolls Icosaedrum: 6 base damage + Triumphus bonus
   → Physics amplifies the effect

4. DM: "Double damage, and the cultist drops their weapon."
```

### Example: Contested Effect

```
1. Wizard casts a binding spell on a knight.

2. DM: "Roll opposing Icosaedra."
   → Both roll d20 + their relevant Mag

3. Wizard: d20 (14) + Binding Mag (3) = 17
   Knight: d20 (11) + Resistance (2) = 13

4. Wizard wins by 4 — the binding holds for 4 rounds.
```

---

## Design Philosophy

### Why Two Axes?

The separation reflects a deeper truth about how stories work:

**Fate** is capricious, negotiable, and dramatic. The same action might succeed gloriously or fail catastrophically depending on the moment. This is why the Tessera Fati are undefined — they flex to serve the narrative.

**Physics** is consistent, calculable, and fair. When you channel Gryst, the universe responds predictably. A fireball with Mag 5 always has roughly the same destructive potential. This is why the Icosaedrum is always d20 — reliability in chaos.

Together, they create tension: fate decides *if* you succeed, physics decides *what that means*.

### Why Dice-Agnostic Fate?

1. **DM Control** — The DM can tune probability to the fiction
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
