YX GAMEMAKER CONTROL SCRIPTS
============================

Hello there!

These are some control scripts I often use, which were inspired on how [Derek Yu's](https://www.derekyu.com/)  uses the control scripts in [Spelunky Classic](http://spelunkyworld.com/original.html).

I kinda did them on a clean-room engineering method and added a bit more stuff here and there, but it follows the same principles, which are:
- For each button there's three scripts:
	- "down" state, which checks the button's pressed status;
	- "pressed" state, which checks if the button was just pressed;
	- "release" state, which checks if the button was just released;

There's support for movement keys (d-pad, arrows), start, select and 8 action buttons for up to 4 players, though only the first player gets keyboard mapping out of the box.

It's not perfect, it still needs a LOT of working (specially with analog controls), but it's here for you to test, use on game jams or whatever. :)

I'm also using the **`approach`** script from _[Matt Thorson's Grandma Engine](https://forums.tigsource.com/index.php?topic=5790.0)_ to test the movement controls.

-----

## Requirements

There are two project in this repository, one for **GameMaker: Studio** (`yx-control-scripts.gmx`) and another for **GameMaker Studio 2** (`yx-control-scripts`), so you'll need to have one of these editors installed in your machine.

-----

## How to Use

Just fire `controlsInit()` at the very beginning of your game to bootstrap all control globals, then use each button's specific script to check states.

There are more things I'm working on for this, like a control mapper (which is kinda "built", but not good enough). Since it saves the controls on a `INI` file, you should be able to map them, as there's also scripts to help you output which key or button the user pressed. :wink: 

-----

## Author

- **Fabio Y. Goto** (_[@go_go_goto](https://twitter.com/go_go_goto)_): web developer, game developer from São Paulo/BR;

-----

## Thanks

- First, and most important, for my fiancée, **Glauce**, because of her support, and also for testing these scripts;
- **Robert Rüdiger** (_[@ruerobgames](https://twitter.com/ruerobgames)_), for help in testing and improving this project; 
- **Derek Yu**, for making _Spelunky_, since without it I'd never think about this solution before;

-----

## License

The code in this repository is licensed under the `MIT License`. Check the `LICENSE.md` file for details on it.