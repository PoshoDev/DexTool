# Change Log

### [v0.3.0-alpha](https://github.com/PoshoDev/DexTool/releases/tag/v0.3.0-alpha)

- **Major Changes**.

  - Shiny dex mode.
    - With shiny icons from [PokéSprite](http://msikma.github.io/pokesprite/).
    - Separate save data from the Regular dex.
    
  - Encounter counters.
    
    - Perfect for shiny hunting!
    
  - Shiny screenshots.
    - Completely different from the Regular dex screenshots.
    - Only show obtained Pokémon or ones with a count above 0.
    - Saved as Saved as *C:\Users\USER\AppData\Local\DexTool\dex.png*.
    
  - Info and Area buttons.
    - Both open an URL showing either the general info or location for a selected Pokémon.
    - Current source is [Serebii.net](https://serebii.net/).
    
  - Data output for selected Pokémon.
    - Perfect for streaming (Twitch, Hitbox or whatever) or external tools!
    - Saved at Saved as *C:\Users\USER\AppData\Local\DexTool\Output*.
    
  - You can now select a specific Pokémon with a left click.
    
    - Displays Info, Area and Counter buttons.
    
  - Added a progress bar to help you keep track of your progress.

  - Added buttons to toggle between National/Galar dex and Regular/Shiny mode.

  - Added Pokémon.
    - Galarian Slowpoke
    - Hoopa Unbound
      - Heads-up by [COOKIEMONK](https://www.reddit.com/user/COOKIEMONK).
    
  - Updated ALL sprites from Gen 7 to Gen 8.
    - Retrieved from [PokéSprite](http://msikma.github.io/pokesprite/).
      - ![](https://raw.githubusercontent.com/msikma/pokesprite/master/pokemon-gen7x/regular/venusaur.png) **→**![](https://raw.githubusercontent.com/msikma/pokesprite/master/pokemon-gen8/regular/venusaur.png) 
    - Edited using [DexTool-UltraTrim](https://github.com/PoshoDev/DexTool-UltraTrim).

  - Automatic backups.
    - Made every 5 minutes after the first change since the last backup.
    - Made when the application is closed.
    - Located at *C:\Users\USER\AppData\Local\DexTool\Backups*

  - New and updated shortcuts.

    |                             Key                              | Action                                                       |
    | :----------------------------------------------------------: | ------------------------------------------------------------ |
    | ![](https://github.com/PoshoDev/DexTool/blob/master/Promo/Buttons/icon_button_%E2%86%91.png?raw=true)<br>or Mouse<br>Wheel Up | Jump to previous box.                                        |
    | ![](https://github.com/PoshoDev/DexTool/blob/master/Promo/Buttons/icon_button_%E2%86%93.png?raw=true)<br>or Mouse<br>Wheel Down | Jump to next box.                                            |
    | ![](https://github.com/PoshoDev/DexTool/blob/master/Promo/Buttons/icon_button_ESC.png?raw=true) | Deselect Pokémon.                                            |
    | ![](https://github.com/PoshoDev/DexTool/blob/master/Promo/Buttons/icon_button_+.png?raw=true) | Count up (for selected Pokémon).                             |
    | ![](https://github.com/PoshoDev/DexTool/blob/master/Promo/Buttons/icon_button_-.png?raw=true) | Count down (for selected Pokémon).                           |
    | ![](https://github.com/PoshoDev/DexTool/blob/master/Promo/Buttons/icon_button_1.png?raw=true) to ![](https://github.com/PoshoDev/DexTool/blob/master/Promo/Buttons/icon_button_8.png?raw=true) | Jump to box containing first Pokémon of a generation.        |
    | ![](https://github.com/PoshoDev/DexTool/blob/master/Promo/Buttons/icon_button_0.png?raw=true) and ![](https://github.com/PoshoDev/DexTool/blob/master/Promo/Buttons/icon_button_9.png?raw=true) | Jump to last box.                                            |
    | ![](https://github.com/PoshoDev/DexTool/blob/master/Promo/Buttons/icon_button_G.png?raw=true) | Switch between National and Galar dex.                       |
    | ![](https://github.com/PoshoDev/DexTool/blob/master/Promo/Buttons/icon_button_I.png?raw=true) | Export progress image.<br/>Saved as *C:\Users\USER\AppData\Local\DexTool\dex.png* |
    | ![](https://github.com/PoshoDev/DexTool/blob/master/Promo/Buttons/icon_button_S.png?raw=true) | Switch between Shiny and Regular dex.                        |

  - Added log outputs in case of missing sprites.

    - Saved as *C:\Users\USER\AppData\Local\DexTool\Logs\MissingSprites.log*
    
  - Labeling went back to just 3 colors (until I add labeling options). 

    - ![](https://github.com/PoshoDev/DexTool/blob/master/Promo/Buttons/icon_slot_0.png?raw=true) ![](https://github.com/PoshoDev/DexTool/blob/master/Promo/Buttons/icon_slot_1.png?raw=true) ![](https://github.com/PoshoDev/DexTool/blob/master/Promo/Buttons/icon_slot_2.png?raw=true)
      - *Hon hon.*

- **Minor Changes**

  - Fixed misspellings for some Pokémon.
  - Improved load times.
  - Slight graphical improvement.
  - Changed from GM:S1 to GM:S2 to work more efficiently.




<details>
<summary>v0.2.0-alpha +</summary>

#### [v0.2.1-alpha](https://github.com/PoshoDev/DexTool/releases/tag/v0.2.1-alpha)

- **Minor changes**
  - Bug fixes regarding new save file creation.



### [v0.2.0-alpha](https://github.com/PoshoDev/DexTool/releases/tag/v0.2.0-alpha)

- **Major changes**
  - Added screenshots!
    
    - Press S.
  - Added Galar dex view toggle!
    
    - Press G.
</details>
      

<details>
<summary>v0.1.0-alpha +</summary>

#### [v0.1.1-alpha](https://github.com/PoshoDev/DexTool/releases/tag/v0.1.1-alpha)

- **Minor changes**
  - Quick edit.




### [v0.1.0-alpha](https://github.com/PoshoDev/DexTool/releases/tag/v0.1.0-alpha)

- First Version!

  Hello lonely guy. Thank you for being perfectionist enough to try my Living Dex tool thing.

  How to Use:

  > Scroll up/down to change boxes.
  > Right click a Pokémon to change its marking. You can decide the meaning of each color but I just go by:
  > -White: Not obtained
  > -Red: In HOME
  > -Blue: In HOME but unorganized
  > -Yellow: In Let's Go Pikachu/Eevee
  > -Lght Blue: In Sword/Shield

  This program is very barebones so expect things to go south at some point, so try to make BACKUPS whenever you can.

  Your SAVE DATA is stored at:
  C:\Users\USER>\AppData\Local\LivingDexSS\save.ini

  Cheers!
</details>

