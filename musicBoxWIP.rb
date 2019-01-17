use_bpm 16

define :snap do
  with_fx :reverb do
    sample :perc_snap2,
      amp: 0.03,
      rate: 1.3,
      pan: 1
    sleep 0.0009
    sample :perc_snap,
      amp: 0.035,
      rate: 1,
      pan: -1
    sleep 0.0009
    sample :perc_snap,
      amp: 0.03,
      rate: 1,
      pan: 0
  end
end

define :kick do
  sample :bd_pure, amp: 0.2, rate: 1, release: 0
end

define :glitchL do
  sample :glitch_perc1,
    amp: 0.04,
    start: 0.01,
    finish: 0.20,
    pan: -0.2,
    release: 0.5
end

define :glitchR do
  sample :glitch_perc1,
    amp: 0.04,
    start: 0.01,
    finish: 0.20,
    pan: 0.2,
    release: 0.5
end

define :perc do
  in_thread do
    2.times do
      kick
      sleep 0.75
      snap
      sleep 0.21873
      kick
      sleep 0.03125
      kick
      sleep 0.75
      snap
      sleep 0.25
    end
  end
  in_thread do
    16.times do
      glitchL
      sleep 0.125
      glitchR
      sleep 0.125
    end
  end
end

define :baseA do
  1.times do
    sample :elec_plip
    play_pattern_timed [:a3, :c3, :f3, :gs3, ],
      [1],
      release: 1.5, amp: 0.9
  end
end

define :melodyA do
  use_synth :beep
  play_pattern_timed [:a4, nil, :e4, :a4, :b4, nil, :c5, :d5, :e5, nil, :f5, :e5, :d5, nil, :c5, :b4, :c5, nil, :e5, nil, :a4, nil, :e5, nil, :d5, :c5, :b4, :a4, :gs4, :a4, :b4, :c5],
    [0.125],
    release: 0.3, amp: 1
end

define :melodyB do
  use_synth :beep
  play_pattern_timed [:a3, nil, nil, :a3, :a3, :b3, :b3, :b3, :c4, nil, nil, :c4, :c4, :c4, :e4, :e4, :a4, nil, :a4, :b4, :c5, :b4, :a4, :g4, :f4, nil, nil, :f4, :e4, :d4, :c4, :b3],
    [0.125],
    release: 0.3, amp: 0.4
end

define :chorus do
  in_thread do
    melodyA
  end
  in_thread do
    melodyB
  end
end

define :all do
  in_thread do
    16.times do
      perc
    end
  end
  in_thread do
    chorus
  end
  1.times do
    baseA
  end
end


live_loop :lofi do
  with_fx :reverb do
    with_fx :reverb do
      1.times do
        #chorus
      end
      #sleep 4
      2.times do
        all
      end
    end
  end
end
