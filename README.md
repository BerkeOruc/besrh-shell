# Besrh-Shell

BerkeOS Fish Shell Configuration with custom functions.

## Features

- Fish shell configuration
- Custom BerkeOS functions (bupdate, brefresh, binfo, bclean)
- Starship prompt integration
- Custom abbreviations and aliases
- Vi mode support

## Installation

### Prerequisites

```bash
pacman -S fish starship
```

### Setup

1. Install Fish shell:

```bash
mkdir -p ~/.config/fish
cp config.fish ~/.config/fish/
```

2. Install custom functions:

```bash
mkdir -p ~/.config/fish/functions
cp functions/*.fish ~/.config/fish/functions/
```

3. Install Starship config:

```bash
cp starship.toml ~/.config/starship.toml
```

4. Set Fish as default shell:

```bash
chsh -s /usr/bin/fish
```

## Custom Functions

### bupdate
Update system packages and AUR:

```fish
bupdate
```

### brefresh
Refresh shell environment:

```fish
brefresh
```

### binfo
Display system information:

```fish
binfo
```

### bclean
Clean system cache:

```fish
bclean
```

## Abbreviations

| Abbreviation | Command |
|--------------|---------|
| g | git |
| gs | git status |
| ga | git add |
| gc | git commit |
| gp | git push |
| gl | git log |
| gd | git diff |
| gco | git checkout |
| gb | git branch |
| ll | ls -la |
| la | ls -a |
| .. | cd .. |
| ... | cd ../.. |

## Custom Aliases

| Alias | Command |
|-------|---------|
| cat | bat |
| find | fd |
| grep | rg |
| vi | nvim |
| vim | nvim |

## Configuration

The main config is in `config.fish`. Modify it to add:
- Custom environment variables
- New abbreviations
- Additional aliases
- Function overrides

## License

MIT
