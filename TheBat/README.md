<p align="center">
  <img width="45%" src="https://github.com/Sam1431/wallpapers/blob/master/bat.png" />
</p>

<p align="center">
  <b> Because I'm Batman </b>
</p>

<img src="https://github.com/Sam1431/TheBat/blob/master/TheBat/.assets/batman-i3.png" alt="img" align="right" width="400px">

This is my i3-gaps setup

The [setup section](#setup) will guide you through the installation process.

****

## My Specs:

+ **WM**: [i3-Gaps](https://github.com/Airblader/i3)
+ **OS**: Gentoo
+ **Shell**: [Bash](https://www.gnu.org/software/bash/)
+ **Terminal**: [Alacritty](https://github.com/alacritty/alacritty)
+ **File Manager**: [Pcmanfm](https://wiki.lxde.org/en/PCManFM)
+ **Launcher**: [Dmenu](https://tools.suckless.org/dmenu/)
+ **Browser**: Firefox

****

## New stuff

- Code Name : Lancelot 
- Now much more Keyboard centric
- Batman Theme [ INSTEAD OF RETRO ]

****

## Setup

Here are the instructions you should follow to replicate my Batman setup.
> 1. Dependencies
  
  You will need the following packages
  
  + **I3-gaps** - Obviously
  + **Polybar** - Status Bar
  + **Alacritty** - Terminal used
  + **Dmenu** - With Some Patch ( You can find the source [here](https://github.com/Sam1431/Gentoo-BSPWM/tree/master/Gentoo-BSPWM/needed%20dependencies/dmenu2))
****  
  
> 2. Install needed fonts

   You will need to install a few fonts (mainly icon fonts) in order for text and icons to be rendered properly.

   Necessary fonts:
   
   + **FontAwesome** - [ dependency for polybar ]
   + **Terminus(TTF)** - [Here](https://files.ax86.net/terminus-ttf/)
>
>   
   - paste the .ttf fonts to `~/.local/share/fonts`.
   - It does not matter that the actual font files (`.ttf`) are deep inside multiple directories. They will be detected as long as they can be accessed from `~/.fonts` or `~/.local/share/fonts`.

   Finally, run the following in order for your system to detect the newly installed fonts.
   ``` in your terminal
   fc-cache -v
   ```
****   
> 3. Install my BSPWM configuration files

   ``` in your terminal 
   git clone https://github.com/Sam1431/TheBat.git
   ```
>
>
****
> 4. Placement 
  
   ```
   Files in /TheBat/.config ----> ~/home/.config
   ```
   
****
   
## Keybinds

I use <kbd>super</kbd> as my modkey

#### Keyboard
| Keybind | Action |
| --- | --- |
| <kbd>super + shift + enter</kbd> | Spawn terminal |
| <kbd>super + F12</kbd> | Launch dmenu (Super + d , if ksuperkey is not installed) |
| <kbd>super + x</kbd> | Close client |
| <kbd>super + [1-0]</kbd> | change workspace |
| <kbd>super + shift + [1-0]</kbd> | Move focused client to tag |
| <kbd>super + w</kbd> | Tiling layout |
| <kbd>super + w</kbd> | Floating layout |
| <kbd>super + f</kbd> | Maximized / Monocle layout |
| <kbd>super + [arrow keys]</kbd> | Change focus by direction |
| <kbd>super + shift + [arrow keys]</kbd> | Move client by direction. |
| <kbd>super + alt + [left]</kbd> | shrink the client sidewards |
| <kbd>super + alt + [right]</kbd> | expand the client sidewards |
| <kbd>super + alt + [down]</kbd> | expand the client vertically |
| <kbd>super + alt + [down]</kbd> | shrink the client vertically |
| <kbd>super + f</kbd> | Toggle fullscreen |

*... And many many more.*

****

#### Mouse
| Mousebind | Action |
| --- | --- |
| `Super + right mouse button(drag)` | Resize Client (In floating) |
| `Super + Left Mouse Button (drag)` | Move Client (In floating) |

****

 > Don't forget to star this repo [ just for fun ] 💙


<p align="center">
  <b> Some Screenshots of my desktop </b>
</p>



<p align="center">
  The Desktop 
</p>

![thebat2](https://user-images.githubusercontent.com/68412503/92904833-ce08f800-f440-11ea-8105-ee71464146e2.png)

<p align="center">
  The Menu 
</p>

![thebat](https://user-images.githubusercontent.com/68412503/92905135-07416800-f441-11ea-96ff-35c2ad9ec124.png)

<p align="center">
  SysInfo
</p>

![2020-09-11-124852_1366x768_scrot](https://user-images.githubusercontent.com/68412503/92905226-1d4f2880-f441-11ea-87f2-0f7f6e002f6a.png)



****
