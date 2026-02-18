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
