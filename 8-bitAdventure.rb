# 8-Bit Adventure by Emythyst
# https://www.youtube.com/watch?v=AqAW6hqNUwU

use_bpm 38

# Percussion (Beat)
define :perc do
  in_thread do
    4.times do
      sample :bd_zum, amp: 1.5
      sleep 0.25
    end
  end
  in_thread do
    with_fx :reverb do
      2.times do
        sleep 0.25
        sample :sn_generic
        sleep 0.25
      end
    end
  end
  16.times do
    sample :drum_cymbal_closed
    sleep 0.0625
  end
end

# Intro Pattern
define :intro do
  use_synth :chiplead
  with_fx :reverb do
    2.times do
      play_pattern_timed [:c4, :c4, :c4, :d4, :e4, :g4, :d5, :c5, :b4, :c5, :c5, :b4, :a4, :g4, :a4, :g4, :f4],
        [0.375, 0.125, 0.25, 0.125, 0.125, 0.25, 0.25, 0.25, 0.25, 0.5, 0.25, 0.125, 0.125, 0.625, 0.125, 0.125, 0.125], amp: 1.2, release: 0
    end
  end
end

# Main Theme
define :melodyA do
  use_synth :chiplead
  with_fx :reverb do
    play_pattern_timed [:c4, :c4, :d4, :e4, :f4, :g4, :d5, :c5, :b4, :c5, :c5, :b4, :a4, :e4, :g4, :a4, :g4, :f4, :e4, :e4, :d4, :e4, :d4, :c4, :g4, :g4, :d4, :e4, :f4, :g4, :a4, :b4, :c5, :b4, :e5, :d5],
      [0.5, 0.125, 0.125, 0.125, 0.125, 0.25, 0.25, 0.25, 0.25, 0.5, 0.125, 0.125, 0.125, 0.125, 0.625, 0.125, 0.125, 0.125, 0.75, 0.25, 0.75, 0.125, 0.125, 0.25, 0.25, 0.25, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125], amp: 1.2, release: 0
    play_pattern_timed [:c5, :c5, :b4, :a4, :e4, :g4, :a4, :c4, :d4, :e4, :f4, :e4, :d4, :c4, :b3, :a3, :e4, :e4, :e4, :d4, :e4, :a3, :a3, :b3, :c4, :d4, :e4, :f4, :e4, :d4, :e4, :g4, :c4, :b3],
      [0.5, 0.125, 0.125, 0.125, 0.125, 0.25, 0.25, 0.25, 0.25, 0.75, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.125, 0.125, 0.25, 0.125, 0.125, 0.25, 0.125, 0.125, 0.25, 0.25, 0.25, 0.25], amp: 1.2, release: 0
  end
end

# Base A
define :baseA do
  use_synth :chiplead
  in_thread do
    play_pattern_timed [nil, :a2, nil, :a2, nil, :f2, nil, :f2, nil, :g2, nil, :g2, nil, :c3, nil, :c3], [0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125], amp: 0.8, release: 0
  end
  1.times do
    play_pattern_timed [nil, :a1, nil, :a1, nil, :f1, nil, :f1, nil, :g1, nil, :g1, nil, :c2, nil, :c2], [0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125], amp: 0.8, release: 0
  end
end

# Bridge
define :bridge do
  use_synth :chiplead
  2.times do
    play_pattern_timed [:a3, :e4, :c4, :e4, :a3, :e4, :f4, :e4, :g3, :d4, :g3, :d4, :c4, :b3, :c4], [0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.25], amp: 1.2, release: 0
  end
end

# Melody B
define :melodyB do
  use_synth :dtri
  with_fx :reverb do
    play_pattern_timed [:c5, :c5, :b4, :c5, :d5, :c5, :g4, :e5, :e5, :f5, :e5, :d5, :c5, :c5, :b4, :c5, :d5, :b4, :a4, :g4, :g4, :e4, :c5, :b4, :c5, :c5, :b4, :c5, :d5, :e5, :b5, :g5, :e5, :d5, :c5, :g4, :c5, :c5, :c5, :g4, :b4, :b4, :b4, :g4, :g4, :g4, :g4], [0.25, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.25, 0.125, 0.125, 0.25, 0.25, 0.25, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.25, 0.125, 0.125, 0.25, 0.25, 0.25, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.5, 0.125, 0.125, 0.125, 0.125, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.0625, 0.0625, 0.0625, 0.0625], amp: 1.2, release: 0
  end
end

# Melody C
define :melodyC do
  use_synth :tb303
  with_fx :reverb do
    play_pattern_timed [:a2, :e2, :a2, :b2, :c3, :e2, :a2, :b2, :g2, :g2, :c3, :b2, :g2, :a2], [0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.25, 0.125, 0.125, 0.125, 0.125, 0.25], release: 0, amp: 0.3, attack: 0
  end
end

# Playlist (Song Arrangement)
1.times do
  in_thread(name: :mySong) do
    
    # Intro function
    intro
    
    # Combination MelodyA, BaseA, and Perc functions
    in_thread do
      16.times do
        perc
      end
    end
    in_thread do
      8.times do
        baseA
      end
    end
    1.times do
      melodyA
    end
    
    # 2 measure rest
    sleep 1
    
    # Combination Bridge, BaseA, and Bridge functions
    in_thread do
      2.times do
        bridge
      end
    end
    in_thread do
      8.times do
        perc
      end
    end
    4.times do
      baseA
    end
    
    # MelodyB function
    melodyB
    
    # Combination MelodyB, BaseA, Perc functions
    2.times do
      in_thread do
        melodyB
      end
      in_thread do
        8.times do
          perc
        end
      end
      4.times do
        baseA
      end
    end
    
    # Combination MelodyB, BaseA, Bridge, Perc functions
    2.times do
      in_thread do
        melodyB
      end
      in_thread do
        8.times do
          perc
        end
      end
      in_thread do
        2.times do
          bridge
        end
      end
      4.times do
        baseA
      end
    end
    
    # Bridge
    1.times do
      bridge
    end
    
    # Bridge with Melody C
    in_thread do
      bridge
    end
    2.times do
      melodyC
    end
    
    # Add the perc
    1.times do
      in_thread do
        4.times do
          melodyC
        end
      end
      in_thread do
        8.times do
          perc
        end
      end
      in_thread do
        2.times do
          bridge
        end
      end
      4.times do
        baseA
      end
    end
    
    # Combination MelodyA, BaseA, and Perc functions
    in_thread do
      16.times do
        perc
      end
    end
    in_thread do
      8.times do
        baseA
      end
    end
    1.times do
      melodyA
    end
    
    # Combination of Melodies
    in_thread do
      16.times do
        perc
      end
    end
    in_thread do
      2.times do
        melodyB
      end
    end
    in_thread do
      8.times do
        baseA
      end
    end
    1.times do
      melodyA
    end
    
    # Headache portion of the song
    in_thread do
      16.times do
        perc
      end
    end
    in_thread do
      2.times do
        melodyB
      end
    end
    in_thread do
      8.times do
        baseA
      end
    end
    in_thread do
      8.times do
        melodyC
      end
    end
    1.times do
      melodyA
    end
    
    # Nearing the end
    in_thread do
      1.times do
        melodyB
      end
    end
    in_thread do
      4.times do
        baseA
      end
    end
    in_thread do
      2.times do
        melodyC
      end
    end
  end
end

# The end c:
