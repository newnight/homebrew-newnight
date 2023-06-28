class VscodePhpactor < Formula
  desc "Extension which integrates Phpactor with VSCode"
  homepage "https://github.com/phpactor/vscode-phpactor"
  url "https://github.com/phpactor/vscode-phpactor/releases/download/1.2.0/phpactor.vsix"
  sha256 "6fc330b47ef3565bccd9e5e1a6686457f07bc5eadd3a2b2404279ce826c6eaca"
  license "MIT"

  def install
    pkgshare.install "phpactor.vsix"
    # system "/usr/local/bin/code","--force", "--install-extension","#{pkgshare}/phpactor.vsix"
  end

  def caveats
    <<~EOS
      install VSCode first than Run folllow cmd to install the VSCode extension:

      code --force --install-extension  #{pkgshare}/phpactor.vsix

    EOS
  end

  test do
    system false
  end
end
