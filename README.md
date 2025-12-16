# ❄️ Arch i3 Dotfiles - Light Blue Theme

These are my personal dotfiles for an **Arch Linux** installation running the **i3** tiling window manager. The configuration is built around a clean, minimal look with a **Light Blue** color theme across all applications.

This repository is designed to be managed using **GNU Stow** for easy symlinking of configuration files into the correct locations in your home directory (`~`).

---

## 🎨 Theme Details

The core aesthetic is a soothing light blue, applied to:

* **Window Manager:** i3 (Borders, Rofi integration)
* **Status Bar:** Polybar
* **Terminal:** Alacritty/Kitty (or your preferred terminal)
* **Other Apps:** Rofi, Dunst (notifications), etc.

---

## 📦 Installation with GNU Stow

GNU Stow is a symlink farm manager that makes it easy to install and manage configurations from a central directory (this repository).

### 1. Prerequisites

Make sure you have `git` and `stow` installed on your Arch system.

```bash
sudo pacman -S git stow
```

### 2. Clone the Repository

Clone this repository into your home directory, typically into a folder named `dotfiles`.

```bash
git clone git@github.com:YourUsername/YourRepoName.git ~/dotfiles
cd ~/dotfiles
```

### 3. Stow the Dotfiles

Each top-level directory in this repository (e.g., `i3`, `polybar`, `alacritty`) is considered a "package" by Stow. When you run `stow <package-name>`, it creates symbolic links from the files inside that directory into the corresponding location in your home directory (`~`).

**⚠️ Important:** If a configuration file or folder already exists in your home directory (e.g., `~/.config/i3`), Stow will usually fail to prevent overwriting your existing files. You should **back up and remove** any conflicting directories/files before running the `stow` command. 

#### Package Layout Example

The directory structure follows the final location in your home directory.

| Stow Package Directory | Target Location in `~` | Symlinked Files/Folders |
| :--- | :--- | :--- |
| `i3/.config/i3` | `~/.config/i3` | `~/.config/i3/config` |
| `polybar/.config/polybar` | `~/.config/polybar` | `~/.config/polybar/config.ini` |
| `alacritty/.config/alacritty` | `~/.config/alacritty` | `~/.config/alacritty/alacritty.yml` |
| `zsh/.zshrc` | `~/.zshrc` | `~/.zshrc` |

#### Running Stow

To install all configurations, run `stow` for each package:

```bash
# Example to install the i3 and Polybar configs
cd ~/dotfiles
stow i3
stow polybar
stow alacritty
# Add other packages as needed
```

### 4. Verification and Reload

After stowing, verify that the symbolic links are in place:

```bash
ls -l ~/.config/i3
# Expected output: ... -> .../dotfiles/i3/.config/i3/config
````

