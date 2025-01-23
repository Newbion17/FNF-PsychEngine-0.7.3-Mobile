function onCreate()
    for i = 0, getProperty('unspawnNotes.length') - 1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'cosmicbgGF' then
            setPropertyFromGroup('unspawnNotes', i, 'multAlpha', 0.3)
            setPropertyFromGroup('unspawnNotes', i, 'noteType', 'GF Sing')
      end
   end
end