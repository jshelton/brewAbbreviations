function _brewAbbreviations_install --on-event brewAbbreviations_install
  __brewAbbreviations.init
end

function _brewAbbreviations_update --on-event brewAbbreviations_update
  __brewAbbreviations.reset
end

function _brewAbbreviations_uninstall --on-event brewAbbreviations_uninstall
  __brewAbbreviations.destroy
end
