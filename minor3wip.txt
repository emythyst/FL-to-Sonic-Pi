# Untitled - Minor 3 by Emythyst
# W I P
# Check the MP3 / WAV I uploaded, this is the original song :)

use_bpm 32

# Percussion (Beat)
define :perc do
  4.times do
    sample :bd_zum, amp: 1.5
    sleep 0.25
  end
end

# Percussion (Beat) with Hat
define :percHat do
  in_thread do
    4.times do
      sample :bd_zum, amp: 1.5
      sleep 0.25
    end
  end
  4.times do
    sleep 0.125
    sample :drum_cymbal_closed
    sleep 0.125
  end
end

# Hat only
define :hat do
  4.times do
    sleep 0.125
    sample :drum_cymbal_closed
    sleep 0.125
  end
end

# Melody A
define :melodyA do
  use_synth :chiplead
  with_fx :reverb do
    1.times do
      play_pattern_timed [:d4, :d4, :d4, :d4, :d4, :e4, :f4, :a4, :g4, :g4, :g4, :g4, :g4, :g4, :f4, :e4, :f4, :f4, :f4, :f4, :f4, :a4, :as4, :d5, :as4, :as4, :as4, :as4, :as4, :a4, :f4, :e4], [0.125], release: 0
    end
  end
end

# Base A
define :baseA do
  use_synth :prophet
  with_fx :reverb do
    play_pattern_timed [:d2, :d2, :f2, :d2, :as1, :as1, :f2, :d2, :f2, :f2, :a2, :f2, :as1, :as1, :f2, :a2], [0.25], attack: 0, release:0.8, amp: 1.2
  end
end

# Base B
define :baseB do
  use_synth :prophet
  with_fx :reverb do
    play_pattern_timed [:as1, :as1, :d2, :as1, :a1, :a1, :c2, :e2, :d2, :d2, :f2, :d2, :d2, :d2, :a2, :d2], [0.25], attack: 0, release:0.8, amp: 1.2
  end
end

# Base C
define :baseC do
  use_synth :prophet
  with_fx :reverb do
    play_pattern_timed [:as1, :a1, :d2, :d2], [1], amp: 1.2, release: 2
  end
end

# Base C Fade Out
define :baseCfade do
  use_synth :prophet
  play :as1, amp: 1.2, release: 2
  sleep 1
  play :a1, amp: 1.1, release: 2
  sleep 1
  play :d2, amp: 1, release: 2
  sleep 1
  play :d2, amp: 0.9, release: 2
  sleep 1
  play :as1, amp: 0.8, release: 2
  sleep 1
  play :a1, amp: 0.7, release: 2
  sleep 1
  play :d2, amp: 0.6, release: 2
  sleep 1
  play :d2, amp: 0.5, release: 2
  sleep 1
end

# Melody B
define :melodyB do
  use_synth :chiplead
  1.times do
    play_pattern_timed [:as4, nil, :as4, :as4, nil, :as4, :d5, nil, :d5, :as4, nil, :as4, :a4, nil, :a4, :a4, nil, :a4, :c5, nil, :c5, :e5, nil, :e5, :d5, nil, :d5, :d5, nil, :d5, :f5, nil, :f5, :d5, nil, :d5, :d5, nil, :d5, :d5, nil, :d5, :a5, nil, :a5, :d5, nil, :d5],[0.125, 0.0625, 0.0625], release: 0
  end
end

# Intro
define :intro do
  1.times do
    melodyA
  end
end

# Chorus A
define :chorusA do
  2.times do
    in_thread do
      melodyA
    end
    in_thread do
      baseA
    end
    4.times do
      perc
    end
  end
end

# Chorus B
define :chorusB do
  2.times do
    in_thread do
      melodyA
    end
    in_thread do
      baseB
    end
    4.times do
      perc
    end
  end
end

# Bridge
define :bridge do
  1.times do
    in_thread do
      melodyA
    end
    1.times do
      baseC
    end
  end
end

# Refrain
define :refrain do
  in_thread do
    8.times do
      percHat
    end
  end
  in_thread do
    2.times do
      melodyB
    end
  end
  2.times do
    baseC
  end
end

# Refrain with Fade
define :refrainFade do
  in_thread do
    8.times do
      percHat
    end
  end
  in_thread do
    2.times do
      melodyB
    end
  end
  1.times do
    baseCfade
  end
end

# Coda (End of loop)
define :coda do
  in_thread do
    4.times do
      hat
    end
  end
  in_thread do
    1.times do
      melodyB
    end
  end
end

# Looped Playlist (Full Song)
in_thread(name: :minor_3) do
  loop do
    intro
    chorusA
    chorusB
    bridge
    refrain
    refrainFade
    coda
    sleep 4
  end
end
