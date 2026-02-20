# Gryst TTRPG

> A momentum-based tabletop roleplaying game where magic is tech, tech is magic, I decided to make a TTRPG instead of sleeping, idk why. The docfiles you see here were crafted with intent but the exact language and actual scaffolding is generated with OPUS. Why? I'm trying to make a ttrpg as a single person instead of sleeping, please forgive. The AI is merely organizing my thoughts. I probably have ADHD, this LLM is essentially an executive function proxy. The end product will be handwritten. This is an organizational document.

## What is Gryst?

Gryst is a TTRPG built around dynamic initiative and collaborative action. Instead of rolling for turn order once and cycling through, players **race** to earn their turns through a **Momentum** system — and when it's time to act, everyone can jump in through **Add-Ons** to build a stack of gambits that resolve as one cinematic moment.

> 📄 [Complete docs as plain text](raw.txt) — auto-generated on each deploy.

---

## Quick Links

### ✅ Core Rules (Developed)

| Section | Description |
|---------|-------------|
| **[Momentum & Turns](rules/Momentum-and-Turns.md)** | Racing initiative, pivotal characters, the gambit stack, parties & cooperation, hijack mechanics, coupling |
| **[Gambits](rules/Gambits.md)** | The atomic unit of resolution — Triumphus, Successus, Clades, Calamitas |
| **[Tags](rules/Tags.md)** | How skills connect to gambits and modules; soft constraints via type labels |
| **[Modules & Loculi](rules/Modules-and-Loculi.md)** | Equipment system — Mass, Complexitās, Magnitūdō; scaling from pistols to Walkers |
| **[RDC (Thread of Fate)](rules/Required-Disambiguation-Canonization.md)** | Undefined details become canon when declared; Schrödinger's Loadout |
| **[Core Mechanic](rules/Core-Mechanic.md)** | d20 for Mag calculations; dice-agnostic four-tier gambit resolution |

### 📖 Codex (GrystForge Content)

| Section | Description |
|---------|-------------|
| **[Dictionary](codex/Cor/Dictionary.md)** | Core terminology — MOMENTVM, COHORS, CONCORDIA, GAMBIT, and all Latin terms |
| **[Tags](codex/Cor/Tags.md)** | Tag definitions — [INTERVENTVS], [CARDINALIS], [SIMPLEX], etc. |
| **[Gambits](codex/Cor/Gambits.md)** | Pre-authored actions with four-outcome resolution |
| **[Modules](codex/Cor/Modules.md)** | Equipment components that grant gambits and stats |

*The Codex is auto-generated from GrystForge bundles. Add content in GrystForge, run `synccodex.sh`, and it appears here.*

### ✅ Worldbuilding (Developed)

| Section | Description |
|---------|-------------|
| **[Overview](worldbuilding/Overview.md)** | The Grystborn, the Six Grysts, spread across stars, religion & deities |
| **[The Nature of Gryst](worldbuilding/The-Nature-of-Gryst.md)** | Magic = Tech = Gryst; gnosis and the esoteric fabric of reality |
| **[The Consensus](worldbuilding/factions/The-Consensus.md)** | The shattered galactic hegemony; universal currency, laws, bureaucracy |
| **[The Forgelords](worldbuilding/factions/The-Forgelords.md)** | Blazing Gryst industrialists; caste system, company planets, Lord of the Forge |
| **[The Pedagogy](worldbuilding/factions/The-Pedagogy.md)** | Flowing Gryst scholars; knowledge must spread like water; ancient, decentralized, living god |
| **[The Angels](worldbuilding/factions/The-Angels.md)** | Lost precursor civilization; earliest spacefaring; relics taught others to reach the stars |
| **[The Quarum](worldbuilding/factions/The-Quarum.md)** | Golden Blooming Gryst constructs; not Grystborn; dormant until powered; unknown origin |
| **[Vanitas Order](worldbuilding/factions/Vanitas-Order.md)** | Blind photophobic war-cult; destroyed their own star; seek to extinguish all light |

### ✅ Ecosystem (Developed)

| Section | Description |
|---------|-------------|
| **[Ecosystem Overview](ecosystem/Overview.md)** | Digital tools vision + business model (free core, premium extras) |
| **[PDA](ecosystem/PDA.md)** | Companion app — character sheets, one-button momentum tracking, DM dashboard |
| **[Mundi et Caeli Grystis](ecosystem/Mundi-et-Caeli-Grystis.md)** | 3D tabletop with Teddy-based real-time world authoring; .gcp content packs |

### 🚧 Work In Progress

| Section | Status |
| [Character Creation](rules/Character-Creation.md) | Template only |
| [Advancement](rules/Advancement.md) | Template only |
| [Vision Statement](core-design/Vision-Statement.md) | Template only |
| [Design Pillars](core-design/Design-Pillars.md) | Template only |
| Bestiary, Adventures, Playtest | Templates only |

---

## Core Concepts

### Momentum
Every character has a Momentum tracker (d20 counter). Each "tick," everyone adds their Momentum Gain simultaneously. First to hit 20 becomes the **Pivotal Character** and kicks off a resolution phase.

### Parties & Cooperation
Combat organizes into **Parties** with shared goals. **Cooperation** lets you freely Add-On to partymates. To break into an enemy's stack, you need a **Hijack** action — which opens the door for your whole party (at a cost).

### The Stack
When the Pivotal Character acts, allies can **Add-On** — spending momentum to slot actions before or after in a queue. **Hijacks** couple with their targets. The whole stack resolves as one narrative beat.

### Gambits
Every action is a **Gambit** with four possible outcomes:
- **Triumphus** — Critical success
- **Successus** — Success  
- **Clades** — Failure
- **Calamitas** — Critical failure

### Modules & Loculi
Everything that *does something* is built from **Modules** (which grant gambits, stats, perks). Modules live in **Loculi** (containers with Mass capacity). Three values define equipment: **Mass** (size), **Complexitās** (cost), **Magnitūdō** (power scaling).

### Magic = Tech
There's no distinction between magic and technology in Gryst. Both are ways of understanding and manipulating **Gryst** — the esoteric fabric of reality. A fireball and a plasma rifle are mechanically identical.

---

## The Elevator Pitch

> "Imagine **Exalted 2e's tick system** combined with **Magic: The Gathering's stack**, where spending momentum to help allies delays your own turn, and the GM resolves the whole stack as one cinematic moment — in a world where magic and tech are the same thing."

---

*This documentation is a living design document. Expect things to change as we playtest.*
