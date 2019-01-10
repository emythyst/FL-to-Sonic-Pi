# Twinkle Twinkle Little Star
# My first Sonic Pi Project

# Found notes at:
#https://www.piano-keyboard-guide.com/how-to-play-twinkle-twinkle-little-star-easy-piano-tutorial/

# Use the Piano synth
use_synth :piano

# The "chorus" or main melody of the song
define :chorus do
  # Right Hand
  in_thread do
    play_pattern_timed [:C4, :C4, :G4, :G4, :A4, :A4, :G4], [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1]
    play_pattern_timed [:F4, :F4, :E4, :E4, :D4, :D4, :C4], [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1]
  end
  # Left Hand
  1.times do
    play_pattern_timed [:C3, :C3, :F3, :C3, :F3, :C3, :G3, :C3], [1, 1, 1, 1, 1, 1, 1, 1]
  end
end

# The "refrain" which repeats twice.
define :refrain do
  # Right Hand
  in_thread do
    play_pattern_timed [:G4, :G4, :F4, :F4, :E4, :E4, :D4], [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1]
  end
  # Left Hand
  1.times do
    play_pattern_timed [:C3, :F3, :C3, :G3], [1, 1, 1, 1]
  end
end

# Playlist (Full Song Arrangement)
in_thread(name: :TwinkleTwinkle) do
  chorus
  2.times do
    refrain
  end
  chorus
end

