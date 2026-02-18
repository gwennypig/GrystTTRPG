# Modules & Loculi

#ttrpg #rules #modules #equipment #customization

## The Module System

Everything in Gryst that *does something* is built from **Modules**. Weapons, armor, Walkers, Heavenstriders, even a character's trained abilities — they're all defined by what modules they carry.

---

## What is a Module?

A **Module** is a discrete package of capability. It can represent:

- A weapon attachment
- A trained technique
- An enchantment
- A cybernetic implant
- A spiritual bond
- A mechanical subsystem

Modules don't care about the "magic vs. tech" distinction — they just define what you can do.

### Module Components

Every module can provide one or more of:

| Component | Description |
|-----------|-------------|
| **Gambits** | Actions you can take (with dice pools, Add-On costs, etc.) |
| **Stats** | Numerical bonuses or modifications |
| **Perks** | Passive effects that are always active |
| **Triggers** | Perks that activate Gambits under certain conditions |

### Example Module

```
┌────────────────────────────────────────────────────┐
│ MODULE: Thermal Lance Mk.II                        │
│ Mass: 3                                            │
│ ─────────────────────────────────────────────────  │
│                                                    │
│ GAMBIT: Focused Beam                               │
│   Add-On Cost: 6                                   │
│   Range: Medium                                    │
│   Effect: Deal thermal damage to single target     │
│   Triumphus: Target ignites (ongoing damage)       │
│   Calamitas: Weapon overheats (1 tick cooldown)    │
│                                                    │
│ STAT: +1 Damage vs. armored targets                │
│                                                    │
│ PERK: Heat Sink                                    │
│   After using Focused Beam, gain +2 to resist      │
│   cold-based effects until your next pivot.        │
│                                                    │
└────────────────────────────────────────────────────┘
```

---

## The Three Values

Every Module and Loculus has three core values:

| Value | Latin | What It Means |
|-------|-------|---------------|
| **Mass** | — | How much capacity it occupies |
| **Complexitās** | "complexity" | How costly/rare/unbelievable it is |
| **Magnitūdō** | "magnitude" | How good/powerful it is |

```
┌────────────────────────────────────────────────────┐
│ THE ECONOMY OF GRYST                               │
│                                                    │
│  MASS ────────► What can hold it?                  │
│                 (Loculus capacity)                 │
│                                                    │
│  COMPLEXITĀS ─► What does it cost?                 │
│                 (Market value, character creation) │
│                                                    │
│  MAGNITŪDŌ ───► How well does it perform?          │
│                 (Scales effects, modifies costs)   │
└────────────────────────────────────────────────────┘
```

---

## Mass: How Scale Works

Every module has a **Mass** value — a simple integer representing how much space/capacity it requires.

```
Mass 1  ─  Tiny (small implant, minor enchantment)
Mass 2  ─  Light (sidearm attachment, trained technique)
Mass 3  ─  Standard (primary weapon module, significant system)
Mass 5  ─  Heavy (vehicle weapon, major enchantment)
Mass 8  ─  Massive (Walker-scale armament)
Mass 12 ─  Colossal (Heavenstrider primary system)
```

Mass is **abstract** — it's not just physical weight. A "heavy" psychic module might be Mass 5 because of the mental load it requires, not because it weighs anything.

---

## Complexitās: The Cost System

**Complexitās** represents how complex, rare, or reality-bending something is. It's the universal "cost" metric for the game.

### What Determines Complexitās?

| Factor | Low Complexitās | High Complexitās |
|--------|-----------------|------------------|
| **Believability** | Conventional mechanisms | Reality-warping effects |
| **Rarity** | Common materials/knowledge | Rare components/secrets |
| **Power** | Modest effects | Game-changing abilities |
| **Precision** | Crude, simple | Intricate, refined |

### Examples

```
Complexitās 2  ─  Conventional firearm mechanism
Complexitās 4  ─  Enhanced targeting system  
Complexitās 6  ─  Plasma generation array
Complexitās 10 ─  Gravity manipulation field
Complexitās 15 ─  Spatial warping teleporter
Complexitās 20 ─  Reality-rewriting artifact
```

### Calculating Total Complexitās

For a complete object (a weapon, a Walker, etc.):

```
Total Complexitās = Loculus Complexitās + Σ(Module Complexitās × Magnitūdō modifier)
```

A gun (simple Loculus) with basic modules = affordable.
A Walker (complex Loculus) with advanced modules = expensive.

### What Complexitās Is Used For

| Context | How It's Used |
|---------|---------------|
| **Market Value** | Higher Complexitās = higher price |
| **Character Creation** | Budget of Complexitās points to spend |
| **Crafting** | Required skill/resources scale with Complexitās |
| **Balancing** | GM tool for encounter design |
| **Availability** | Higher Complexitās = harder to find |

---

## Magnitūdō: Quality & Scaling

**Magnitūdō** represents how *good* something is — its quality tier. Two pistols might have the same modules, but different Magnitūdō means different performance.

### The Magnitūdō Scale

```
Magnitūdō 0  ─  Broken/Rusted (barely functional)
Magnitūdō 1  ─  Poor (functional but unreliable)
Magnitūdō 2  ─  Standard (baseline performance)
Magnitūdō 3  ─  Quality (well-made, reliable)
Magnitūdō 4  ─  Superior (exceptional craftsmanship)
Magnitūdō 5  ─  Masterwork (peak mortal craft)
Magnitūdō 6+ ─  Legendary (mythical, artifact-tier)
```

### What Magnitūdō Affects

**1. Effect Scaling**

Every module defines how its effects scale with Magnitūdō:

```
┌────────────────────────────────────────────────────┐
│ MODULE: Precision Barrel                           │
│ Mass: 2 | Base Complexitās: 3                      │
│ ─────────────────────────────────────────────────  │
│                                                    │
│ STAT: Accuracy Bonus                               │
│   Magnitūdō 1: +0                                  │
│   Magnitūdō 2: +1                                  │
│   Magnitūdō 3: +2                                  │
│   Magnitūdō 4: +3                                  │
│   Magnitūdō 5: +4                                  │
│                                                    │
│ PERK: Steady (Magnitūdō 3+)                        │
│   Ignore penalties from unstable footing           │
│                                                    │
│ PERK: True Strike (Magnitūdō 5+)                   │
│   Once per Resolution, reroll an attack gambit     │
└────────────────────────────────────────────────────┘
```

Higher Magnitūdō might:
- Increase numerical bonuses
- Unlock additional perks
- Reduce Add-On costs
- Improve Gambit outcomes

**2. Complexitās Modifier**

Magnitūdō affects the final Complexitās cost:

```
Effective Complexitās = Base Complexitās × Magnitūdō Multiplier

Magnitūdō 1: ×0.5  (cheap, but weak)
Magnitūdō 2: ×1.0  (baseline)
Magnitūdō 3: ×1.5  
Magnitūdō 4: ×2.0
Magnitūdō 5: ×3.0
Magnitūdō 6: ×5.0  (legendary = expensive)
```

### Example: The Same Gun, Different Quality

```
┌─────────────────────────────────────────────────────────────┐
│ RUSTY REVOLVER              │ MASTERWORK REVOLVER           │
│ Magnitūdō: 1                │ Magnitūdō: 5                  │
│ ────────────────────────────│──────────────────────────────│
│ Loculus Capacity: 4         │ Loculus Capacity: 6           │
│ Loculus Complexitās: 1      │ Loculus Complexitās: 8        │
│                             │                               │
│ Installed: Basic Chamber    │ Installed: Enhanced Chamber   │
│   Damage: 1d6               │   Damage: 2d6+2               │
│   Range: Short              │   Range: Medium               │
│   Add-On: 5                 │   Add-On: 4                   │
│                             │                               │
│                             │ Built-in Perk: Quick Draw     │
│                             │   +2 Momentum on first pivot  │
│                             │   of combat                   │
│ ────────────────────────────│──────────────────────────────│
│ Total Complexitās: ~2       │ Total Complexitās: ~25        │
│ "Found in a ditch"          │ "Family heirloom"             │
└─────────────────────────────────────────────────────────────┘
```

### Loculus Magnitūdō

Loculi also have Magnitūdō, which affects:

- **Capacity** — Higher Magnitūdō = more Mass capacity
- **Durability** — Resistance to damage/degradation
- **Built-in Features** — Legendary Loculi may have inherent modules
- **Compatibility** — Some modules require minimum Loculus Magnitūdō

---

## Putting It Together

A complete equipment entry looks like:

```
┌────────────────────────────────────────────────────┐
│ WALKER: Ironclad Mk.III                            │
│ ═══════════════════════════════════════════════════│
│ Loculus Type: Walker                               │
│ Mass Capacity: 35                                  │
│ Complexitās (Base): 40                             │
│ Magnitūdō: 3 (Quality)                             │
│ ─────────────────────────────────────────────────  │
│                                                    │
│ INSTALLED MODULES:                                 │
│                                                    │
│ [LEFT ARM] Thermal Lance Mk.II                     │
│   Mass: 5 | Complexitās: 8 | Mag: 3                │
│                                                    │
│ [RIGHT ARM] Kinetic Hammer                         │
│   Mass: 6 | Complexitās: 6 | Mag: 3                │
│                                                    │
│ [CORE] Reinforced Reactor                          │
│   Mass: 8 | Complexitās: 12 | Mag: 3               │
│                                                    │
│ [LEGS] Enhanced Locomotion                         │
│   Mass: 6 | Complexitās: 7 | Mag: 2                │
│                                                    │
│ ─────────────────────────────────────────────────  │
│ TOTALS:                                            │
│   Mass Used: 25 / 35                               │
│   Total Complexitās: ~95 (with Mag modifiers)      │
│   Market Value: $$$$$ (small fortune)              │
└────────────────────────────────────────────────────┘
```

---

## Loculus: What Holds Modules

A **Loculus** (plural: **Loculi**) is anything that can hold modules. Think of it as a container with a capacity limit.

| Loculus Type | Typical Capacity | Examples |
|--------------|------------------|----------|
| **Personal** | 5-10 Mass | Character's equipped gear, innate abilities |
| **Weapon** | 3-8 Mass | A rifle, sword, or focus with attachment slots |
| **Armor** | 4-10 Mass | Protective gear with enhancement slots |
| **Walker** | 20-40 Mass | Piloted mecha with multiple hardpoints |
| **Heavenstrider** | 30-60 Mass | Flight-capable units with extensive systems |
| **Vehicle** | 15-30 Mass | Ground or sea vehicles |
| **Installation** | 50+ Mass | Stationary defenses, bases, ships |

### Loculus Rules

1. **Capacity** — A Loculus can hold modules up to its total capacity
2. **Slots** — Some Loculi have specific slots (e.g., "2 Arm slots, 1 Core slot")
3. **Overflow** — You cannot exceed capacity; choose what to install

---

## Scaling: Same Module, Different Size

Here's the elegant part: the same *conceptual* module can exist at different scales.

### Example: Plasma Repeater

```
┌────────────────────────────────────────────────────┐
│ PLASMA REPEATER (Light)       Mass: 2              │
│ ───────────────────────────────────────────────    │
│ For: Personal weapon Loculus                       │
│ Gambit: Rapid Fire (Add-On: 4)                     │
│ Effect: Multiple low-damage hits                   │
└────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────┐
│ PLASMA REPEATER (Standard)    Mass: 4              │
│ ───────────────────────────────────────────────    │
│ For: Vehicle weapon Loculus                        │
│ Gambit: Rapid Fire (Add-On: 5)                     │
│ Effect: Multiple medium-damage hits                │
│ Perk: Suppression — targets take -1 to Add-On      │
└────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────┐
│ PLASMA REPEATER (Heavy)       Mass: 8              │
│ ───────────────────────────────────────────────    │
│ For: Walker arm Loculus                            │
│ Gambit: Rapid Fire (Add-On: 6)                     │
│ Effect: Multiple high-damage hits, area coverage   │
│ Perk: Suppression — targets take -2 to Add-On      │
│ Perk: Intimidating — enemies must pass Resolve     │
│       check or lose 2 Momentum on first barrage    │
└────────────────────────────────────────────────────┘
```

The core identity ("plasma repeater that fires rapidly") stays consistent. The Mass, power, and additional perks scale with the Loculus it's designed for.

---

## Triggered Perks: Passive-to-Active

Some Perks can **trigger Gambits** under specific conditions. These are the bridge between passive effects and active abilities.

### Example: Reactive Shielding

```
PERK: Reactive Shielding
  When you take damage from a ranged attack, 
  you may immediately trigger the EMERGENCY BARRIER
  Gambit at no Add-On cost. (Once per Resolution phase)
```

This lets a passive defense become an active response without requiring the player to have held momentum for an Add-On.

---

## Building Your Loadout

Characters (and their equipment) are defined by their Loculi and the modules installed:

```
┌────────────────────────────────────────────────────┐
│ CHARACTER: Hawk                                    │
│ ═══════════════════════════════════════════════════│
│                                                    │
│ PERSONAL LOCULUS (Capacity: 8)                     │
│ ├─ Combat Training [Mass 2] — basic attack gambits │
│ ├─ Quick Reflexes [Mass 1] — +1 Momentum Gain      │
│ └─ Danger Sense [Mass 2] — Hijack: Dive for Cover  │
│                            (Used: 5 / Free: 3)     │
│                                                    │
│ WEAPON LOCULUS: Blaster Rifle (Capacity: 5)        │
│ ├─ Thermal Lance Mk.II [Mass 3]                    │
│ └─ Targeting Assist [Mass 2] — +1 to ranged        │
│                            (Used: 5 / Free: 0)     │
│                                                    │
│ ARMOR LOCULUS: Light Vest (Capacity: 4)            │
│ ├─ Ablative Plating [Mass 2] — reduce first damage │
│ └─ Mobility Servos [Mass 1] — +1 movement          │
│                            (Used: 3 / Free: 1)     │
└────────────────────────────────────────────────────┘
```

---

## Design Notes

### Why "Loculus"?

Latin for "compartment" or "small box." It evokes both ancient mysticism and mechanical precision — fitting for a world where magic and tech are the same.

### Why Mass Instead of Slots?

Slots are rigid ("you have 3 weapon slots"). Mass is flexible ("you have 8 capacity; fill it however you want"). This allows for:

- **Trade-offs** — One big module vs. many small ones
- **Scaling** — Same math works from characters to Walkers
- **Creativity** — Players aren't locked into predetermined builds

### Module Rarity

*[TODO: Define rarity tiers and acquisition rules]*

Common modules are widely available. Rare modules require quests, crafting, or significant resources. Legendary modules are campaign-defining.
