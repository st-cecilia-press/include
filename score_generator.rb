require 'fileutils'

top_template = <<EOS
\\book {
  \\bookOutputName #(string-append filename "%{suffix}")
  \\header{
    title = \\scTitle
    subtitle = \\scSubtitle
    meter = \\scMeter
    poet = \\scPoet
    composer = \\scComposer
    copyright = \\scCopyright
    tagline = \\scTagline
  }
  \\score {
    \\new ChoirStaff <<
EOS

top_midi_template = <<EOS
\\book {
  #(ly:set-option 'midi-extension "mid")
  \\header{
    title = \\scTitle
    subtitle = \\scSubtitle
    meter = \\scMeter
    poet = \\scPoet
    composer = \\scComposer
    copyright = \\scCopyright
    tagline = \\scTagline
  }
  \\score {
    \\new ChoirStaff <<
EOS

staff_template = <<EOS
      \\new Staff = \\scMusic%{number}Name <<
        \\new Voice {
          \\scGlobal \\scMusic%{number}Clef%{suffix} \\scMusic%{number}
        }
      >>
EOS

staff_midi_template = <<EOS
      \\new Staff = \\scMusic%{number}Name <<
        \\set Staff.midiInstrument = #"oboe"
        \\new Voice {
          \\scGlobal \\scMusic%{number}ClefModern \\unfoldRepeats{ \\scMusic%{number} }
        }
      >>
EOS

bottom_template = <<EOS
    >>

    \\include "../include/%{filename}.ly"
  }
}
EOS

numbers = ['One', 'Two', 'Three', 'Four', 'Five']

1.upto(5){ |n|
  File.open("sc_a#{n}.ly","w") do |f|
     f.puts top_template % { suffix: '_orig_clef' }
      1.upto(n) { |i|
        f.puts staff_template %  {number: numbers[i-1], suffix: 'Orig'}
      }
     f.puts bottom_template % { filename: 'sc_layout' }
  
     f.puts
  
     f.puts top_template % { suffix: '_modern_clef' }
      1.upto(n) { |i|
  
        f.puts staff_template %  {number: numbers[i-1], suffix: 'Modern'}
  
      }
     f.puts bottom_template % { filename: 'sc_layout' }
  
     f.puts
  
     f.puts top_midi_template
      1.upto(n) { |i|
        f.puts staff_midi_template %  {number: numbers[i-1]}
      }
     f.puts bottom_template % { filename: 'sc_midi' }
  end
}
