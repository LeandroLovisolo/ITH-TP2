require File.dirname(__FILE__) + "/synth/synth"

s = Synth.new
text = "sakA la kAka mamA"
puts text
puts s.synthetize(text, "output.wav").to_s
