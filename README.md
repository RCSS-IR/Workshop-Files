# Soccer Simulation Environment Setup

This script automates the setup process for a soccer simulation environment. It installs the necessary dependencies and clones repositories for the RCSSServer, SoccerWindow2, and librcsc.

## Prerequisites

Make sure you have administrative privileges to run sudo commands.

## Usage

1. Open a terminal.
2. clone this project.
3. Execute the script by running the following command:

```bash
chmod 777 install.sh
./install.sh
```

## Steps Performed by the Script

1. Updates the package manager repositories.
2. Upgrades the installed packages.
3. Installs required dependencies including Qt Creator, development libraries, and tools.
4. Removes existing 'codes' and 'installationFiles' directories and creates new ones.
5. Clones StarterAgent2D-V2 and helios-base repositories into the 'codes' directory.
6. Clones RCSSServer, SoccerWindow2, and librcsc repositories into the 'installationFiles' directory.
7. Builds and installs RCSSServer, librcsc, and SoccerWindow2.

## Notes

- This script assumes a Debian-based system.
- It installs the necessary tools and dependencies for building and running a soccer simulation environment.
- Make sure to review the script and understand its actions before executing it.

Feel free to customize the script or reach out for any assistance.
```

Save this content in a file named `README.md` in the same directory as your setup script. Users can then refer to this README file for information on how to use and understand the script.
