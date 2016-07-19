require 'optparse'
require 'midilib/sequence'
require 'midilib/consts'
include MIDI

options = {mp3: false}  
OptionParser.new do |parser|
  parser.on("-m", "--mp3", "Outputs mp3 files") do
    options[:mp3] = true
  end
  
  parser.on("-h", "--help",  "Prints this Help") do 
    puts parser
  end
end.parse!

midi_file = ARGV.pop
raise "need input midifile" unless midi_file

seq = MIDI::Sequence.new()

tracks = Hash.new()
# Read the contents of a MIDI file into the sequence.
File.open(midi_file, 'rb') { | file |
    seq.read(file) { | track, num_tracks, i |
        # Print something when each track is read.
        if track && track.name  =~ /:/
          name = track.name.split(':')[0]
          tracks[name] = i-1
        end 
    }
}

types = [
{name: 'emphasized', main_velocity: 127, other_velocity:64, main_program: 69, other_program: 6},
{name: 'solo', main_velocity: 127, other_velocity: 0, main_program: 69, other_program: 69},
{name: 'mute', main_velocity: 0, other_velocity: 127, main_program: 69, other_program: 69},
]

types.each{ |type|
  tracks.keys.each { | part_name |
    # Iterate over every event in every track.
    tracks.values.each { | index |
      tracks[part_name] === index ?  seq.tracks[index].instrument = GM_PATCH_NAMES[type[:main_program]] : seq.tracks[index].instrument = GM_PATCH_NAMES[type[:other_program]]
      seq.tracks[index].each { | event |
        if MIDI::NoteEvent === event
          tracks[part_name] === index ? event.velocity = type[:main_velocity] : event.velocity = type[:other_velocity] 
        elsif MIDI::ProgramChange === event
          tracks[part_name] === index ? event.program = type[:main_program] : event.program = type[:other_program] 
        end
      }
    } 
    
    # Write the sequence to a MIDI file.
    prefix = File.basename(midi_file, ".mid")
    directory = File.dirname(midi_file) 
    filename = "#{directory}/#{prefix}_#{part_name}_#{type[:name]}"
    
    File.open("#{filename}.mid", 'wb') { | file | seq.write(file) }
    `timidity -EFreverb=0 -Ow -o - #{filename}.mid | lame - #{filename}.mp3` if options[:mp3]
  }
}

