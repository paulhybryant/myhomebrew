class TrashCli < Formula
  homepage "https://github.com/andreafrancia/trash-cli"
  head "https://github.com/andreafrancia/trash-cli.git"

  def install
    system "python", "setup.py", "install", "--install-scripts=#{bin}", "--record=#{prefix}/install.log"
  end if OS.linux?

  test do
    system "#{bin}/trash", "-v"
  end
end