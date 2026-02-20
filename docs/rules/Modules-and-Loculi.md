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

## Magnitūdō: The Scaling Number

**Magnitūdō** is a number that flows through all calculations. It represents how *good* something is, and every module defines how that number affects its performance.

### The Core Idea

Magnitūdō isn't a tier lookup — it's a **variable in your formulas**.

```
┌────────────────────────────────────────────────────┐
│ MAGNITŪDŌ AS A NUMBER                              │
│                                                    │
│  Module defines: "Damage = Base + (Mag × 2)"       │
│                                                    │
│  Rusty sword (Mag 1):   Damage = 2 + (1 × 2) = 4   │
│  Quality sword (Mag 3): Damage = 2 + (3 × 2) = 8   │
│  Legend sword (Mag 6):  Damage = 2 + (6 × 2) = 14  │
│                                                    │
│  Same module, same formula, different Mag.         │
└────────────────────────────────────────────────────┘
```

### Typical Magnitūdō Ranges

```
Mag 0-1  ─  Broken, rusted, barely functional
Mag 2-3  ─  Standard, common equipment
Mag 4-5  ─  High quality, well-crafted
Mag 6-8  ─  Exceptional, masterwork
Mag 9+   ─  Legendary, artifact-tier
```

But there's no hard cap — Magnitūdō can scale as high as the fiction allows.

### How Modules Use Magnitūdō

Each module defines its own formulas. Common patterns:

| Usage | Example Formula |
|-------|-----------------|
| **Direct bonus** | Accuracy = Mag |
| **Multiplied** | Damage = Mag × 2 |
| **Added to base** | Range = 10 + (Mag × 5) meters |
| **Reduced cost** | Add-On Cost = 8 - Mag (min 2) |
| **Dice scaling** | Roll = Mag d6 |

### Example Module

```
┌────────────────────────────────────────────────────┐
│ MODULE: Precision Barrel                           │
│ Mass: 2 | Base Complexitās: 3                      │
│ ─────────────────────────────────────────────────  │
│                                                    │
│ STAT: Accuracy Bonus = Mag                         │
│ STAT: Effective Range = 20 + (Mag × 10) meters     │
│                                                    │
│ GAMBIT: Aimed Shot                                 │
│   Add-On Cost: 7 - floor(Mag / 2)                  │
│   Damage: 1d6 + Mag                                │
│                                                    │
│ PERK (Optional, Mag 5+): True Strike               │
│   Once per Resolution, reroll an attack gambit     │
└────────────────────────────────────────────────────┘
```

The optional tier-locked perk is still possible, but the primary scaling is through the number itself.

### Character Stats Modify Magnitūdō

Here's the key: in combat, your character's relevant stats can **modify the effective Magnitūdō** of your equipment.

```
┌────────────────────────────────────────────────────┐
│ EFFECTIVE MAGNITŪDŌ IN COMBAT                      │
│                                                    │
│  Effective Mag = Base Mag + Stat Modifier          │
│                                                    │
│  Example:                                          │
│    Sword Base Mag: 3                               │
│    Character's Might: +2                           │
│    Effective Mag: 5                                │
│                                                    │
│  The same sword hits harder in skilled hands.      │
└────────────────────────────────────────────────────┘
```

This means:
- A novice with a masterwork weapon uses its base Mag
- A master with a rusty sword can still be deadly (stat modifier compensates)
- A master with a masterwork weapon is terrifying (stacking Mag)

### Tags: What Modifies Mag

Every Gambit has **Tags** that determine which skills can modify Magnitūdō.

**See [Tags](rules/Tags.md) for the full tag system.**

Quick example:
```
Gambit: "Aimed Shot" | Tags: [Marksmanship]
Your Marksmanship skill: +3 | Weapon Mag: 4
Effective Mag: 7
```

### Complexitās Modifier

Magnitūdō also affects cost. Higher quality = more expensive:

```
Effective Complexitās = Base Complexitās × (1 + Mag/4)

Mag 0:  ×1.0  (baseline)
Mag 2:  ×1.5  
Mag 4:  ×2.0
Mag 6:  ×2.5
Mag 8:  ×3.0
```

### Example: The Same Gun, Different Mag

```
┌─────────────────────────────────────────────────────────────┐
│ RUSTY REVOLVER              │ MASTERWORK REVOLVER           │
│ Magnitūdō: 1                │ Magnitūdō: 6                  │
│ ────────────────────────────│──────────────────────────────│
│                             │                               │
│ Installed: Chamber Module   │ Installed: Chamber Module     │
│   Damage = 1d6 + Mag        │   Damage = 1d6 + Mag          │
│   → 1d6 + 1                 │   → 1d6 + 6                   │
│                             │                               │
│   Range = 10 + (Mag × 5)    │   Range = 10 + (Mag × 5)      │
│   → 15 meters               │   → 40 meters                 │
│                             │                               │
│   Add-On = 6 - floor(Mag/2) │   Add-On = 6 - floor(Mag/2)   │
│   → 6 (no reduction)        │   → 3 (fast to use)           │
│ ────────────────────────────│──────────────────────────────│
│ In the hands of a Gunslinger (Perception +3):              │
│   Effective Mag: 4          │   Effective Mag: 9            │
│   Damage: 1d6 + 4           │   Damage: 1d6 + 9             │
│   Range: 30 meters          │   Range: 55 meters            │
└─────────────────────────────────────────────────────────────┘
```

### Loculus Magnitūdō

Loculi also have Magnitūdō, which typically affects:

- **Capacity** — Capacity = Base + Mag (higher quality = more slots)
- **Durability** — Damage resistance scales with Mag
- **Built-in Bonuses** — Some Loculi add their Mag to all installed modules

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
2. **No Rigid Slots** — Modules exist arbitrarily within a Loculus; the [<span style="color:#9d8015">CHORAGVS</span>](codex/Cor/Dictionary.md#choragvs) determines what makes narrative sense
3. **Module Tags** — Modules have tags that define what they are (see below)
4. **Overflow** — You cannot exceed capacity; choose what to install

---

## Module Tags & Narrative Constraints

Modules have **tags** that define what type of component they are. These tags create soft constraints that the [<span style="color:#9d8015">CHORAGVS</span>](codex/Cor/Dictionary.md#choragvs) interprets narratively.

**See [Tags](rules/Tags.md) for the full tag system.**

### Example: The Cor System

Every Walker needs a **Cor** (heart/core) — a power source. All core modules are tagged `[Cor]`.

```
┌────────────────────────────────────────────────────┐
│ MODULE: Fusion Cor Mk.III                          │
│ Tags: [Cor] [Power] [Thermal]                      │
│ Mass: 8 | Complexitās: 15                          │
└────────────────────────────────────────────────────┘
```

### Soft Constraints via Tags

The [<span style="color:#9d8015">CHORAGVS</span>](codex/Cor/Dictionary.md#choragvs) understands baseline expectations:
- "A Walker has 1 Cor" — this is the default
- "A Walker has 2 Arms" — this is the default

But modules can **modify these constraints** (e.g., Redundancy Protocol Cor Chambering allows an extra Cor — with trade-offs).

### Why No Rigid Slots?

Rigid slot systems limit creativity. Instead:
- **Tags define what something IS**
- **DM interprets what makes sense**
- **Modules can bend rules**
- **Flexibility enables weird builds**

---

## Required Disambiguation Canonization (RDC)

Details can remain undefined — until they matter. When you answer, it becomes permanent canon.

**See [Required Disambiguation Canonization](rules/Required-Disambiguation-Canonization.md) for the full RDC system.**

Quick summary: If you never specified where your Thermal Lance is mounted, you get to decide when the GM asks — but then it's locked forever. This creates "artificial luck" where undefined details can save you... but also lock you into consequences later.

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
