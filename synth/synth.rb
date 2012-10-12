require 'wavefile'

class Synth
	include WaveFile

	def self.synthesize(text, output_file)
		return false if not validate(text)
		diphones = text_to_diphones(text.strip)
		diphones = diphones.map { |d| File.dirname(__FILE__) + "/diphones/#{d}.wav"}
		append_wav_files(output_file, diphones)
		diphones
	end

	private
		def self.validate(text)
			text = text.dup
			%w{ka kA la lA ma mA pa pA sa sA \ }.each { |s| text.gsub! s, "" }
			text.strip.length == 0
		end

		def self.text_to_diphones(text)
			diphones = []
			i = 0
			while i < text.length
				if i == 0
					diphones.push("-" + text[0]) 
				elsif i == text.length - 1
					diphones.push(text[i] + "-")
				elsif text[i] == " "
					diphones.push(text[i-1] + "-")
					diphones.push("#")
				elsif text[i-1] == " "
					diphones.push("-" + text[i])
				else
					diphones.push(text[i-1] + text[i])
				end
				i += 1
			end
			diphones
		end

		def self.append_wav_files(dst, wavs)
			Writer.new(dst, Format.new(:stereo, 16, 44100)) do |writer|
			  wavs.each do |file_name|
			    Reader.new(file_name).each_buffer(4096) do |buffer|
			      writer.write(buffer)
			    end
			  end
			end			
		end
end