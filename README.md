# Complete Fire Red Upgrade

## What is this?
This is my work in progress fork for a personal romhack project (tentatively "Pokemon Trails"). Here's a general breakdown of what this repository has:

* PLA Pokemon support (plus a few extras for my personal project.)
* Several signature moves from PLA: Barb Barrage, Wave Crash, Psyshield Bash, Dire Claw, Infernal Parade, Ceaseless Edge, Triple Arrows, Stone Axe, Mountain Gale, Esper Wing, Chloroblast, Bitter Malice. Much of the code, animation and implementation of this can be credited to Greenphx9, but some of it is from me.
* A small few TCG moves integrated with accurate effects (again for my personal project. It's setup for a joke in the story)
* Additional animations for Gen 8 moves that did not have finished animation work in vanilla CFRU.
* Support for move effects of Court Change (courtesy of Soupercell), Thunder Cage, Snap Trap, and Decorate, all of which do not have function in vanilla CFRU.

Generally, credits are listed in the files, or in notes for the individual commits, for who changed what - but my process is confessedly pretty messy and I may have made some mistakes! Please do not hesitate to point out any problems to me.

Attack animation particles are free to use (most of the new ones are from me) but please don't use any other graphics I've created or am using; though I have done many, I didn't create all of the character sprites used here. (A more detailed graphics credits listing will come when I start adding more character graphics)

**Vanilla CFRU info - read the documentation!!**

## Features
* Expanded PC Boxes (up to 25!)
* Battle Engine Upgraded to Gen 8
  * All Moves, Abilities, Items, Item Effects through Gen 8
  * A complete set of move animations
  * Vastly improved AI system with decision-making skills for all new battle effects
  * Z Moves
  * Mega Evolution / Primal Reversion / Ultra Burst
  * Ability pop-ups
  * Hidden Abilities
  * Dissapearing HP-bars during Attack Animations
  * Trainer Sliding / In-battle messages
  * Expanded Poké Balls
  * Battle Terrain
  * Totem Pokémon
  * Trainers with EVs
  * Class-based Music
  * Class-based Poké Balls
  * Dynamic Trainer Backsprites
  * Pre-battle mugshots
  * Wild double battles
  * Multi Battles (with a partner)
  * New Evolution Methods
  * Expanded Learnsets
  * Badge-based obedience
  * Shiny Charm + Oval Charm
  * Level Scaling
  * Updated Exp. Share
  * Inverse Battles, Sky Battles
  * Overworld trainer facing
  * Move types light up on move menu based on effectiveness
* Battle Frontier/Facilities
* Expanded Move Reminder (up to 50 moves)
* Improved Tm/Hm Expansion, Reusable TMs
* Updated Pickup mechanics
* Swarms
* Day/Night/Seasons
* Roaming Pokémon
* JPANs engine features ported and redesigned/improved in many ways
  * Character Customization
  * Lots of new scripting specials
  * Whiteout hack / text updates
  * And more!
* Save-block expansion
* DexNav and secondary PokéTools Start Menu
* Dynamic overworld palettes
* Updated Daycare system
* Expanded Text Names (Abilities, etc)
* Select Pokemon from PC directly
* Scrolling summary screen
* Base stats on pokedex summary screen
* Updated repel system
* Configurable Start Menu
* Follow Me
* Expanded Pokemon in the Hall of Fame
* Triple Layer Blocks
* Expanded Text Buffers
* Footstep noise in grass & on sand
* Omnidirectional Jumping
* Item Image on obtain
* Move Items on Party Screen
* New Field Moves like Rock Climb & Defog
* Expanded Coins, Safari Balls/Steps
* Fairy Type
* Oval Charm
* And More!

**NOTE** Personalized options are available in *src/config.h*. The options can be customized by commenting and uncommenting lines.

**Note** Pokemon Expansion can be found [here](https://github.com/Skeli789/Dynamic-Pokemon-Expansion)

## Installation Instructions
### Windows
See [the wiki](https://github.com/Skeli789/Complete-Fire-Red-Upgrade/wiki/Windows-Installation-Instructions).

### UNIX-like OS (Linux, MacOS, ...)
1. Install devkitPro with instructions [here](https://devkitpro.org/wiki/Getting_Started).

2. Export `${DEVKITARM}/bin/` to your `PATH` variable.

3. Make sure you've installed python 3.6+ and it can be called directly via either `python` or `python3`.

4. Clone the repo and go inside:   
```bash
git clone https://github.com/Skeli789/Complete-Fire-Red-Upgrade
cd Complete-Fire-Red-Upgrade
```

5. Get your ROM into the current directory and rename it to **BPRE0.gba**.

6. Configure the offset you want to insert the code:
In *scripts/make.py* change `OFFSET_TO_PUT=YYY` to the location you want to insert the data.

7. Run `python scripts/make.py` (or `python3 scripts/make.py` if you’ve installed multiple python versions).

A new gba file will appear named as **test.gba** and an **offsets.ini** file.
Those are your resultant files.

## Notes

Anytime you make changes, the compiler will only compile the files you have changed.

### Specific to Windows
Any changes made to header files will require you to type ``python scripts//clean.py build``
in cmd and then rerun the build scripts. For more command line options, see "Engine
Scripts" in the documentation.

### Specific to UNIX-like OS (linux, macOS, ...):
Any changes made to header files will require you to clean everything in *build/* and then rerun the build scripts.
