function __brewAbbreviations.init
  function __brewAbbreviations.create_abbr -d "Create Git plugin abbreviation"
    set -l name $argv[1]
    set -l body $argv[2..-1]
    abbr -a $name $body
    set -a __brewAbbreviations_plugin_abbreviations $name
  end

  set __brewfile_path ~/.config/Brewfile
  mkdir -p "$__brewfile_path"

  set -q __brewAbbreviations_plugin_initialized; and exit 0

  set -U __brewAbbreviations_plugin_abbreviations

  # brew abbreviations
  __brewAbbreviations.create_abbr bsr          brew search
  __brewAbbreviations.create_abbr binst        brew install

  # brew dump abbreviations
  __brewAbbreviations.create_abbr bdump        brew bundle dump -f --describe --file="$__brewfile_path"

  # mas abbreviations
  __brewAbbreviations.create_abbr maslu        mas lucky
  __brewAbbreviations.create_abbr masl         mas list
  __brewAbbreviations.create_abbr masr         mas search

  # Cleanup declared functions
  functions -e __brewAbbreviations.create_abbr

  # Mark git plugin as initialized
  set -U __brewAbbreviations_plugin_initialized (date)
end
