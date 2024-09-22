<a href="https://discord.gg/qwUwqKfszS"><img src="https://img.shields.io/badge/discord-join-7289DA.svg?logo=discord&longCache=true&style=flat" /></a>

# reStories

## Intro

The aim of this project is to make Liberty City Stories playable on PC and potentially Vice City Stories as well.

This repository does not include any assets from the game. A prior copy of the game is required to convert the assets.

## Legal Notice

**Disclaimer:** It is crucially imperative to ensure that you have legally obtained a copy of the game before using this project. This project does not provide or distribute any game assets. Please respect the intellectual property rights of Take-Two Interactive Software and use this project responsibly. This project is not affiliated with Rockstar Games, Take-Two Interactive Software or any other related entities.

## How can I try it?

- reLCS requires game assets from the PS2 version to work. Use the [reLCS Asset Converter](https://github.com/knackers4/res/releases/download/relcs/reLCSAssetConverter.exe) to convert the assets from your legally owned game copy.
- Build reLCS.exe or get precompiled one from artifacts or releases.
- Move reLCS.exe to the directory with converted assets and run it.

## Building

- Clone the repo using the argument `--recursive`.
- Run `premake-vs2022.cmd` on root folder.
- Open the project via Visual Studio inside `build` folder
