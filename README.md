YX GAMEMAKER CONTROL SCRIPTS
============================

This repo contains some scripts I use to handle controller bindings on some of my games. They were hugely inspired by how **[Derek Yu][0]** wrote control handling scripts for his game **[Spelunky Classic][1]**.

I kinda did some clean-room engineering to build these control scripts here, and ended up adding more stuff here and there, but it basically follows the same principles: _each button has 3 states and, for each state we have a script (down, pressed and released)_.

There's support for movement keys (d-pad, WASD), start (enter), select (esc) and 8 action buttons for up to 4 players, though only the first player gets the mapping for keyboard out of the box.

In addition to that, there's also the optional use of analog sticks, for which I've added scripts to also emulate the down, pressed and released states. **BUT** these scripts require the use of the `obj_controlsAnalog` object, which can be initialized when calling the bootstrap script (and setting `use_analog` to true).

There's also a global for each player, indicating if the user's using the "gamepad" or "keyboard" schemes.

It's not a perfect scheme, still needs work and optimization, but it worked for me pretty nicely, and I hope it does work for you, or at least helps you reach your own control scheme scripts! :smile:

Use it on your project, game jam or whatever! No need to credit (though appreciated)! :wink:

**P.s.:** I'm also using the **`approach`** script from _[Matt Thorson's Grandma Engine][2]_ to test the movement controls.

-----

## Requirements

There are two project in this repository, one for **GameMaker: Studio** (`yx-control-scripts.gmx`) and another for **GameMaker Studio 2** (`yx-control-scripts`), so you'll need to have one of these editors installed in your machine.

-----

## How to Use

Just fire `controlsInit()` at the very beginning of your game to bootstrap all control globals, then use each button's specific script to check states.

There are more things I'm working on for this, like a control mapper (which is kinda "built", but not good enough). Since it saves the controls on a `INI` file, you should be able to map them, as there's also scripts to help you output which key or button the user pressed. :wink: 

-----

## Author

- **Fabio Y. Goto** (_[@go_go_goto][3]_): web developer, game developer - São Paulo/BR;

-----

## Thanks

- First, and most important, for my fiancée, **Glauce**, because of her support, and also for testing these scripts;
- **Robert Rüdiger** (_[@ruerobgames][4]_), for help in testing and improving this project; 
- **Derek Yu**, for making _Spelunky_, since without it I'd never think about this solution before;

-----

## License

The code in this repository is licensed under the `MIT License`. Check the `LICENSE.md` file for details on it.

[\\]: -----------------------------------------------------------------

[0]: https://www.derekyu.com/
[1]: http://spelunkyworld.com/original.html
[2]: https://forums.tigsource.com/index.php?topic=5790.0
[3]: https://twitter.com/go_go_goto
[4]: https://twitter.com/ruerobgames
