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

## Where Do Gambits Come From?

**Everything you can "do" in Gryst is a Gambit.** Gambits don't come from a short list of core actions — they come from your **equipment, skills, and the situation**.

### The Hierarchy

```
┌────────────────────────────────────────────────────┐
│ GAMBIT SOURCES (in priority order)                 │
│                                                    │
│ 1. MODULE-PROVIDED GAMBITS (primary)               │
│    Your rifle's "Fire Single Round" gambit         │
│    Your armor's "Brace for Impact" gambit          │
│    Your ship's "Evasive Maneuver" gambit           │
│                                                    │
│ 2. SKILL-PROVIDED GAMBITS                          │
│    Gunslinger's "Fan the Hammer" gambit            │
│    Arcanist's "Arcane Bolt" gambit                 │
│                                                    │
│ 3. CORE FALLBACK GAMBITS (last resort)             │
│    Generic "Attack" when nothing else applies      │
│    Generic "Defend" when nothing else applies      │
└────────────────────────────────────────────────────┘
```

**Module Gambits are primary.** A rifle doesn't use a generic "Attack" — it uses the specific Gambit granted by its firing mechanism Module (e.g., "Fire Conventional Single Round" with predefined outcomes for that weapon type).

**Core Fallback Gambits exist for edge cases** — when you're improvising with something that doesn't have a Module, when you're doing something truly generic, or when the DM needs a quick resolution.

### Example: Rifle Attack

Your rifle has a **Conventional Firearm Mechanism** Module installed. That Module grants the Gambit:

```
┌────────────────────────────────────────────────────┐
│ FIRE CONVENTIONAL SINGLE ROUND                     │
│ (Gambit from Conventional Firearm Mechanism)       │
│ ─────────────────────────────────────────────────  │
│ Add-On Cost: 3                                     │
│ Tags: Ranged, Ballistic                            │
│                                                    │
│ TRIUMPHUS: Precision hit                           │
│   → Full damage + choose: vital hit (+50% damage)  │
│     OR target staggered (loses momentum)           │
│                                                    │
│ SUCCESSUS: Clean hit                               │
│   → Deal weapon damage                             │
│                                                    │
│ CLADES: Miss                                       │
│   → No damage, expend ammunition                   │
│                                                    │
│ CALAMITAS: Malfunction                             │
│   → No damage, weapon jams (clear as action)       │
└────────────────────────────────────────────────────┘
```

This is NOT a generic attack. This is a **specific Gambit** authored for conventional firearms, with outcomes that make sense for that weapon type.

A plasma rifle would have a different Module with a different Gambit ("Fire Plasma Bolt") — different outcomes, different flavor, different risks.

---

## Core Fallback Gambits

**Fallback Gambits are the exception, not the rule.** Use them only when:
- You're improvising with something that has no Module
- The situation is truly generic
- You need a quick resolution and don't have a better Gambit

### Generic Attack (Fallback)

```
┌────────────────────────────────────────────────────┐
│ GENERIC ATTACK (Fallback Gambit)                   │
│ ─────────────────────────────────────────────────  │
│ Use when: No specific Gambit applies               │
│                                                    │
│ TRIUMPHUS: Solid hit with bonus                    │
│   → Damage + DM determines a bonus effect          │
│                                                    │
│ SUCCESSUS: You hit                                 │
│   → Deal appropriate damage                        │
│                                                    │
│ CLADES: You miss                                   │
│   → No damage                                      │
│                                                    │
│ CALAMITAS: Something goes wrong                    │
│   → No damage AND a complication                   │
└────────────────────────────────────────────────────┘
```

Notice how **vague** this is compared to the rifle's specific Gambit. That's intentional — fallbacks are generic because they have to cover everything. Specific Gambits from Modules are richer and more interesting.

### Other Fallback Gambits

These exist for when nothing else applies:

| Fallback | Use When |
|----------|----------|
| **Generic Attack** | Hitting something without a weapon Gambit |
| **Generic Defense** | Blocking/dodging without a defense Gambit |
| **Generic Skill** | Attempting something with no relevant Gambit |
| **Generic Social** | Persuading when no social Gambit applies |

**The goal is to NOT use these.** Build your character with Skills and Equipment that give you specific, interesting Gambits.

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

### Example: Rifle Attack (Using Module Gambit)

```
1. Player: "I shoot the cultist with my rifle."
2. DM: "That's 'Fire Conventional Single Round' from your 
        rifle's mechanism. Roll d6 for the Gambit."
3. Player rolls: 5 (Successus)
4. DM: "Clean hit. Calculate damage with Mag."
5. Player: Rifle base 4 + Marksmanship modifier +2 = 6 damage
6. DM: "The cultist takes 6 damage and stumbles."
```

### Example: Triumphus (Critical Hit)

```
1. Player rolls: 6 on d6 (Triumphus!)
2. DM: "Precision hit! The Gambit says you choose: 
        vital hit (+50% damage) OR target staggered."
3. Player: "Vital hit — I want maximum damage."
4. Player calculates: 6 base × 1.5 = 9 damage
5. DM: "The cultist crumples. That was decisive."
```

Notice how the **Gambit itself** defined what Triumphus means — we didn't improvise "critical hit does X." The Module Gambit pre-authored the outcome choices.

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
