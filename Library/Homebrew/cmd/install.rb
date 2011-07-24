require 'formula_installer'
require 'hardware'
require 'blacklist'

module Homebrew extend self
  def install
    ARGV.named.each do |name|
      msg = blacklisted? name
      raise "No available formula for #{name}\n#{msg}" if msg
    end unless ARGV.force?

    install_formulae ARGV.formulae
  end

  def check_writable_install_location
    raise "Cannot write to #{HOMEBREW_CELLAR}" if HOMEBREW_CELLAR.exist? and not HOMEBREW_CELLAR.writable?
    raise "Cannot write to #{HOMEBREW_PREFIX}" unless HOMEBREW_PREFIX.writable?
  end

  def check_cc
    # Need to implement check for gcc
  end

  def install_formulae formulae
    formulae = [formulae].flatten.compact
    return if formulae.empty?

    check_writable_install_location
    check_cc

    formulae.each do |f|
      begin
        installer = FormulaInstaller.new f
        installer.ignore_deps = ARGV.include? '--ignore-dependencies'
        installer.go
      rescue FormulaAlreadyInstalledError => e
        opoo e.message
      end
    end
  end
end
