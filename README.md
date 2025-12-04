# SHOOTING THE ENEMY 🎯
Simple 2D Game made with LÖVE2D where you control a panda that shoots bullets at a bouncing enemy snake. Each hit makes the enemy go faster.

## Gameplay 🎮
- **Player**: Control a panda with a/d keys, shoot with space bar.
- **Enemy**: A snake that bounces between walls, speeding up with each hit
- **Objective**: Shoot the enemy without missing
- **Challenge**: The enemy gets faster with each successful hit

## How to Run 🚀
1. Install [LÖVE2D](https://love2d.org/)
2. Clone this repository:
   ```bash
   git clone https://github.com/daniel-morg-silva/Shooting-Game.git
3. Run the game:
   ```bash
   cd Shooting-Game
   love game

## Controls 🛠️
- **A**: Move player left
- **D**: Move player right
- **Spacebar**: Shoot bullet

## Project Structure 📁
game-directory/
├── main.lua          # Game entry point, callbacks and edge detection
├── classes/
│   ├── player.lua       # Player class with movement and shooting
│   ├── enemy.lua        # Enemy class with bouncing AI
│   └──bullet.lua        # Bullet class
├── lib/
│   └── classic.lua   # Class library for OOP in Lua
└── media/
    ├── panda.png     # Player sprite
    ├── snake.png     # Enemy sprite
    └── bullet.png    # Bullet sprite

## Credits 📚
- **Assets**: [Kenney.nl](https://kenney.nl/) for the free game assets
- **Tutorial**: Based on "Shoot the Enemy" game tutorial on [SheepSolution](https://www.sheepolution.com/learn/book/14)
- **Engine**: LÖVE2D 11.4+
- **Class Library**: classic.lua for OOP in Lua

## Author 🙋🏼‍♂️
Daniel Silva - First Semester Software Engineering student
