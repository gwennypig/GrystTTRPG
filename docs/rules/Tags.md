# Tags

#ttrpg #rules #tags #core

Tags are labels that define what something IS and what it CAN DO. They appear on Gambits, Modules, and Loculi — creating a unified vocabulary across the entire system.

---

## Tag Classes

Every tag belongs to one of these classes:

| Class | Purpose | Examples |
|-------|---------|----------|
| **Form** | What something IS (its nature) | [Mechanism], [Cor], [Blade] |
| **Category** | Mechanical grouping for rules | [Firearm], [Heavy], [Walker] |
| **Proficiency** | Training/skill required | [Martial], [Arcane], [Tech] |
| **Element** | Damage or effect type | [Fire], [Kinetic], [Psionic] |
| **Range** | Distance classification | [Melee], [Close], [Far] |
| **Modifier** | Behavior changes | [Hijack], [Silent], [Charged] |
| **Source** | Origin (mechanically equivalent) | [Tech], [Magic], [Hybrid] |
| **Condition** | Status effects | [Burning], [Stunned], [Prone] |
| **Other** | Catch-all | [Unique], [Prototype] |

### Form vs Category

- **Form** = What it IS (ontological). A plasma rifle's Form is [Mechanism].
- **Category** = How it's classified (taxonomical). That same rifle's Category might be [Firearm], [Heavy].

A gunblade has Form tags [Mechanism] and [Blade], and Category tags [Firearm] and [Melee Weapon]. All true simultaneously.

---

## Parameterized Tags

Any tag can optionally carry a value when assigned:

```
[Melee]           → just the tag
[Melee: 2m]       → tag with a parameter
[Burning: 3 turns]
[Range: 50m]
```

The parameter is just a string — write whatever makes sense.

---

## What Tags Do

Tags serve two primary functions:

1. **Skill Matching** — Determine which character skills modify Magnitūdō
2. **Type Definition** — Define what category something belongs to

```
┌────────────────────────────────────────────────────┐
│ TAGS = THE SYSTEM'S VOCABULARY                     │
│                                                    │
│  "This Gambit has [Marksmanship]"                  │
│  → Your Marksmanship skill applies                 │
│                                                    │
│  "This Module has [Cor]"                           │
│  → It's a core/heart component                     │
│                                                    │
│  "This Loculus has [Walker]"                       │
│  → It's a Walker-type frame                        │
└────────────────────────────────────────────────────┘
```

---

## Tags on Gambits

Every Gambit has one or more tags that determine which skills can modify its effective Magnitūdō.

### How It Works

```
Gambit: "Aimed Shot"
Tags: [Marksmanship] [Precision]

Your Marksmanship skill: +3
Weapon Mag: 4
───────────────────────
Effective Mag: 7
```

### Multiple Tags = Player Choice

When a GAMBIT has multiple tags, the player chooses which skill to apply:

```
GAMBIT: Riposte
Tags: [Melee] [Finesse]

Player can use Combat OR Finesse — whichever is higher.
(Or GM may allow combining in special circumstances)
```

### Common Gambit Tags

| Tag | Associated Skill | Typical Gambits |
|-----|------------------|-----------------|
| **[Marksmanship]** | Marksmanship | Ranged attacks, aiming |
| **[Melee]** | Combat | Sword strikes, brawling |
| **[Finesse]** | Finesse | Precise strikes, parries |
| **[Might]** | Might | Heavy blows, lifting, breaking |
| **[Arcana]** | Arcana | Spellcasting, channeling |
| **[Tech]** | Tech | Hacking, device operation |
| **[Piloting]** | Piloting | Walker/Strider/vehicle control |
| **[Athletics]** | Athletics | Movement, dodging, climbing |
| **[Stealth]** | Stealth | Sneaking, ambushes |
| **[Social]** | Charisma | Persuasion, intimidation |

*[TODO: Define full tag/skill list]*

---

## Tags on Modules

Modules use tags to define what TYPE of component they are. This creates soft constraints that the CHORAGVS interprets narratively.

### Example: Cor Tags

All core/heart modules are tagged `[Cor]`:

```
MODULE: Fusion Cor Mk.III
Tags: [Cor] [Power] [Thermal]

The [Cor] tag means this is a core module.
A Walker typically needs exactly one [Cor].
```

### Common Module Tags

| Tag | What It Means |
|-----|---------------|
| **[Cor]** | Core/heart — power source |
| **[Arm]** | Arm mount — manipulators, weapons |
| **[Leg]** | Leg system — locomotion |
| **[Sensor]** | Sensory equipment |
| **[Weapon]** | Offensive capability |
| **[Defense]** | Protective system |
| **[Utility]** | Support/auxiliary function |
| **[Power]** | Energy-related |
| **[System]** | Internal subsystem |

### Soft Constraints via Tags

Tags create baseline expectations:
- "A Walker has 1 [Cor]" — default
- "A Walker has 2 [Arm]s" — default
- "A character has 1 [Head]" — hopefully

Modules can modify these constraints:

```
MODULE: Redundancy Protocol Cor Chambering
Tags: [System] [Redundancy]

PERK: Additional Cor Slot
  Your Loculus can hold one additional [Cor]
  module beyond the normal limit.
```

---

## Tags on Loculi

Loculi have tags that define what TYPE of container they are and what they're compatible with.

### Example Tags

| Tag | What It Means |
|-----|---------------|
| **[Walker]** | Piloted mecha frame |
| **[Heavenstrider]** | Flight-capable unit |
| **[Vehicle]** | Ground/sea transport |
| **[Personal]** | Character-scale equipment |
| **[Weapon]** | Weapon frame (gun, sword, etc.) |
| **[Armor]** | Protective gear |
| **[Installation]** | Stationary structure |

### Compatibility

Some modules require specific Loculus tags:

```
MODULE: Walker Combat OS
Tags: [System] [Combat]
Requires: Loculus with [Walker] tag

This module only works in Walker-type frames.
```

---

## Ad-Hoc Tag Application

Tags are guidelines, not prisons. If a player makes a compelling argument that their skill should apply — even without the matching tag — the GM can allow it.

> **Player:** "My character was a circus knife-thrower. Can I use my Performance skill for this throwing attack?"
> 
> **GM:** "Sure, that makes sense for your character. Use Performance this time."

### When to Allow Ad-Hoc Tags

Questions GMs should consider:
- Does the skill make narrative sense for this action?
- Is the player trying to always use their highest skill inappropriately?
- Would allowing this create a cool character moment?
- Is the player building their character around a creative interpretation?

**Golden rule:** If it sounds cool and isn't being abused, allow it.

---

## Design Notes

### Why Multiple Tags?

Tags are flexible where single labels are rigid:

| Single Label | Multiple Tags |
|--------------|---------------|
| "Ranged Weapon" | [Mechanism] [Firearm] [Ranged] [Marksmanship] [Thermal] |
| One box | Many hooks |
| Hard boundaries | Soft, combinable |

A plasma rifle might have:
- **Form:** [Mechanism]
- **Category:** [Firearm], [Heavy]  
- **Proficiency:** [Marksmanship]
- **Element:** [Thermal]
- **Range:** [Ranged: 100m]

Each tag is a hook for skills, rules, and interactions.

### Tag Discovery

As you play, you'll discover which tags matter in your campaign. A stealth-focused game might care about `[Stealth]` and `[Sensor]` tags. A mecha combat game might focus on `[Piloting]` and `[Cor]` interactions.

Tags grow with your table.
