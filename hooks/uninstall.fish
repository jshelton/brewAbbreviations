function __brewAbbreviations.destroy
  for ab in $__brewAbbreviations_plugin_abbreviations
      abbr -e $ab
  end
  set -Ue __brewAbbreviations_plugin_abbreviations
  set -Ue __brewAbbreviations_plugin_initialized
end
