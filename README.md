# Magi-Nation Disassembly

This is a disassembly of Magi-Nation for the Gameboy Color that I have been working on/off since 2020. It serves as the starting point for potential mods to the game.

## Installation

This explains how to get the tools required to build Magi-Nation.

1. Clone the repository or download the files into a folder on your computer.

2. If using Windows, you need to install [Make for Windows](http://gnuwin32.sourceforge.net/packages/make.htm). You can skip this step for Linux/Mac.

3. Install [RGBDS](https://rgbds.gbdev.io/install) (version 0.6.1 was used).

4. Install [Python](https://www.python.org/downloads/) (version 3.9.2 was used).

5. Install the required Python packages:

        cd C:/MagiNationFolder/
        cd python
        pip install -r requirements.txt

6. Build the ROM:

        cd C:/MagiNationFolder/
        make extras
        make

7. The checksum should be displayed and evaluate to `1624f857098ca278b15629914f48352b`.

8. Optional: If using VS Code, you can install the MagiScript highlighting template
    1. Download the latest [MagiScript Release](https://github.com/GauChoob/magiscript/releases) into your repository.
    2. Open up VS Code, and run the following in the command line:

            code --install-extension magiscript-1.0.0.vsix