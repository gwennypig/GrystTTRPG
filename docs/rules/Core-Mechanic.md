# Core Mechanic

#ttrpg #rules #mechanics #dice

The core mechanic is built around two principles: **d20 for calculations** and **dice-agnostic resolution**.

---

## Mag vs Gambits: What Does What?

First, let's be clear about the division:

| System | Question | Examples |
|--------|----------|----------|
| **Gambits** | "Did X happen?" | Did the attack hit? Did I pick the lock? Did I convince them? |
| **Magnitūdō** | "How much?" | How much damage? How far? How effective? |

```
┌────────────────────────────────────────────────────┐
│ THE FLOW                                           │
│                                                    │
│  GAMBIT: Did the attack hit?                       │
│  ↓                                                 │
│  Triumphus / Successus / Clades / Calamitas        │
│  ↓                                                 │
│  If hit → MAGNITŪDŌ determines damage/effects      │
│                                                    │
│  Gambit = DID it happen                            │
│  Mag = HOW MUCH happened                           │
└────────────────────────────────────────────────────┘
```

**Gambits are primary.** They resolve whether something occurs. Magnitūdō kicks in afterward to determine the magnitude of effects.

---

## The d20: For Magnitūdō Math

Players already bring d20s for tracking Momentum. We use them for Mag-related calculations too.

### Why d20?

- **Already at the table** — Momentum tracking requires d20s anyway
- **Familiar** — Most players know the d20
- **Good range** — 1-20 provides granular results
- **Easy math** — Adding modifiers is intuitive

### What Uses d20?

**Effect calculations** that scale with Magnitūdō:

```
Damage = Base + (Effective Mag × multiplier)
Range = Base + (Effective Mag × 5) meters
Duration = Effective Mag rounds
```

When you need to **roll for magnitude** (variable damage, contested effects), use d20:

- Damage roll: `d20 + Weapon Mag` vs armor/threshold
- Contested effect: Both sides roll `d20 + Mag`, higher wins
- Variable outcome: `d20 + Mag` determines intensity

The d20 handles **numbers**, not hit/miss. That's the Gambit's job.

---

## Gambit Resolution: Dice-Agnostic

Here's where Gryst differs: the **four-tier outcome** (Triumphus, Successus, Clades, Calamitas) is resolved separately, and the system is **dice-agnostic**.

### The Four Outcomes

| Outcome | Latin | Meaning |
|---------|-------|---------|
| **Critical Success** | *Triumphus* | Exceptional result, bonus effects |
| **Success** | *Successus* | You achieve what you wanted |
| **Failure** | *Clades* | You don't achieve it, complications may arise |
| **Critical Failure** | *Calamitas* | Disaster, significant consequences |

### Any Dice, Any Distribution

As long as all parties agree on a system that maps chance into these four results, **any dice work**:

| Method | How It Works |
|--------|--------------|
| **d4** | 1 = Calamitas, 2 = Clades, 3 = Successus, 4 = Triumphus |
| **d6** | 1 = Calamitas, 2-3 = Clades, 4-5 = Successus, 6 = Triumphus |
| **d20** | 1 = Calamitas, 2-7 = Clades, 8-17 = Successus, 18-20 = Triumphus |
| **Percentile** | GM defines ranges based on difficulty |
| **2d6** | Bell curve distribution, GM defines thresholds |
| **Custom** | Whatever the table agrees on |

### The DM Decides

The **DM determines the best dice and distribution** for any given Gambit. Factors to consider:

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

This negotiation IS the game. The rules provide structure; the table provides judgment.

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
│ Dice: [DM's choice based on difficulty]            │
│                                                    │
│ TRIUMPHUS: Hit with bonus effect                   │
│   → Full damage + critical effect (DM determines)  │
│   → Examples: Extra damage, target staggered,      │
│               hit a weak point, disarm             │
│                                                    │
│ SUCCESSUS: Clean hit                               │
│   → Deal damage (calculate with Mag)               │
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

These templates speed up play while preserving flexibility.

---

## Putting It Together

A typical attack involves both systems:

### Step 1: Resolve the Gambit

*Did the attack hit?*

Roll the agreed-upon dice for the four-tier outcome:

- **Triumphus** — Critical hit, bonus effects
- **Successus** — Clean hit, proceed to damage
- **Clades** — Miss, possible minor complication
- **Calamitas** — Critical miss, something goes wrong

### Step 2: Calculate Effects with Mag (If Hit)

*How much damage?*

If the Gambit resulted in Successus or Triumphus:

```
Damage = Weapon Base + Effective Mag (+ Triumphus bonus if applicable)

Effective Mag = Weapon Mag + Skill Modifier
```

The d20 may be used if damage is variable or contested (e.g., rolling against armor).

### Example: Full Attack Sequence

```
1. Player: "I shoot the cultist with my rifle."
2. DM: "Standard attack. Roll d6."
3. Player rolls: 5 (Successus)
4. DM: "Hit! Roll damage."
5. Player calculates: Rifle Mag 4 + Marksmanship +2 = 6 damage
6. DM: "The cultist takes 6 damage and staggers back."
```

### Example: Triumphus Attack

```
1. Player rolls attack: 6 on d6 (Triumphus!)
2. DM: "Critical hit! You hit a weak point."
3. Player calculates: 6 base damage + Triumphus bonus (double? extra effect?)
4. DM decides: "Double damage, and the cultist drops their weapon."
```

---

## Design Philosophy

### Why Dice-Agnostic?

1. **GM Control** — The DM can tune probability to the fiction
2. **Flexibility** — Different situations deserve different odds
3. **Negotiation as Play** — Discussing the gambit IS roleplaying
4. **No Universal Balance** — Not everything should have equal odds

### Why d20 for Mag?

1. **Consistency** — One die type for calculations
2. **Availability** — Already at the table for Momentum
3. **Tradition** — Familiar to most players
4. **Range** — 1-20 + mods provides meaningful spread

### The Consensus

The system is named after a fictional galactic bureaucracy, and appropriately, it runs on **consensus**:

- Players and DM agree on Gambits
- Players and DM agree on dice
- Players and DM agree on ranges
- Rules provide framework, not dictation

---

## Quick Reference

| System | Question | Method |
|--------|----------|--------|
| **Gambit** | "Did it happen?" | Dice-agnostic four-tier outcome |
| **Magnitūdō** | "How much?" | d20 + Mag for calculations |

| Outcome | Result |
|---------|--------|
| Triumphus | Critical success, bonus effects |
| Successus | Success, proceed to Mag calculations |
| Clades | Failure, minor complications possible |
| Calamitas | Critical failure, disaster |

### Attack Flow
```
Gambit (did it hit?) → If hit → Mag (how much damage?)
```
