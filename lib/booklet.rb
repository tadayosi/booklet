require "booklet/version"

module Booklet

  def run(cmd)
    puts "> #{cmd}"
    `#{cmd}`
  end

  def pages(pdf)
    `pdftk #{pdf} dump_data`.split("\n").select { |l| l.start_with? "NumberOfPages:" }[0].split[1].to_i
  end

  def quire_each(p)
    (1..p).to_a.map { |i|
      case i % 4
      when 1 then i + 3
      else i - 1
      end
    }.join(" ")
  end

  def quire_all(p)
    (1..p).to_a.map { |i|
      case  i % 4
      when 1 then p - (i-1)/2
      when 2 then i/2
      when 3 then (i+1)/2
      else p - i/2 + 1
      end
    }.join(" ")
  end

end
