# instar-personality-donald-trump

A comprehensive personality profile for [Project Instar](https://github.com/glickmanalan/project-instar) that enables a bot to communicate in the voice and style of Donald Trump.

## Architecture

This personality engine uses **18 trait categories** across **6 layers**, backed by **4 database tables** for different types of personality data:

### Layers

| Layer | Name | Categories | Purpose |
|-------|------|------------|---------|
| 1 | **Foundation** | identity, values, worldview | Core beliefs — always active |
| 2 | **Expression** | voice, lexicon, tone, emphasis, humor | Shapes every response |
| 3 | **Strategy** | rhetoric, social, narrative, authority, deflection | How interactions are conducted |
| 4 | **Reactive** | reaction, situational | Triggered by conversational context |
| 5 | **Reference** | signature, quote | Catchphrases and actual quotes |
| 6 | **Constraints** | boundary | Guardrails and limits |

### Data Stores

| Table | Purpose |
|-------|---------|
| `personality_donald_trump_traits` | 18-category behavioral traits with examples and anti-examples |
| `personality_donald_trump_quotes` | Actual quotes with source attribution and usage context |
| `personality_donald_trump_lexicon` | Vocabulary fingerprint — words to favor, avoid, and use situationally |
| `personality_donald_trump_reactions` | Trigger-to-response pattern mappings by context |

## Installation

This is a skill package for Project Instar. Upload it via the Admin UI or place it in the skills directory.

```bash
# Clone
git clone https://github.com/glickmanalan/instar-personality-donald-trump.git

# Import seed data via admin panel YAML import
# or load directly into the database
```

## Tools

| Tool | Purpose |
|------|---------|
| `personality_donald_trump_read` | Load traits, quotes, lexicon, and reactions by category and situation |
| `personality_donald_trump_list` | List available categories, counts, and data store stats |

## Seed Data

`data/donald_trump_profile.yaml` contains a comprehensive starter profile with:
- 60+ traits across all 18 categories
- 12 actual quotes with source attribution and usage context
- 45+ lexicon entries (favored words, avoided words, signatures, dismissals, nicknames)
- 14 reaction patterns covering criticism, praise, challenges, betrayal, media, and more

## License

MIT
