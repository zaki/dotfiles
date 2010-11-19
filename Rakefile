require 'rake'
require 'erb'
require 'rbconfig'
require 'fileutils'

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  Dir['*'].each do |file|
    next if %w[Rakefile README.rdoc LICENSE].include? file
    next if (Config::CONFIG['host_os'] !~ /mswin|mingw/) && (file=~/^(win|aliases)/)
    
    if File.exist?(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"))
      if File.identical? file, File.join(ENV['HOME'], ".#{file.sub('.erb', '')}")
        puts "identical ~/.#{file.sub('.erb', '')}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file.sub('.erb', '')}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file.sub('.erb', '')}"
        end
      end
    else
      link_file(file)
    end
  end
end

def replace_file(file)
  FileUtils.rm_rf("$HOME/.#{file.sub('.erb', '')}")
  link_file(file)
end

def link_file(file)
  if file =~ /.erb$/
    puts "generating ~/.#{file.sub('.erb', '')}"
    File.open(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  else
    puts "linking ~/.#{file}"
    if Config::CONFIG['host_os'] =~ /mswin|mingw/
      if File.directory?("./#{file}")
        FileUtils.cp_r("./#{file}/.", File.join(ENV['HOME'],"/.#{file}"))
      else
        FileUtils.cp_r("./#{file}", File.join(ENV['HOME'],"/.#{file}"))
      end
    else
      system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
    end
  end
end
