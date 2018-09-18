def bread1(stale)
  if stale >=9
    sample :ambi_glass_rub
  else sample :ambi_drone, rate: stale
    sleep(1)
    bread1 (stale + 1)
  end
end


def pb(crunchy)
  play(crunchy)
  sleep(1)
end

def jelly()
  sample :drum_snare_hard
  sleep(1)
end
def not_end()
  1 == [1,2].choose
end
def use_bread2()
  sample :ambi_choir
end

3.times do
  bread1(1)
  pb(95)
  jelly()
  use_bread2() if not_end()
end



