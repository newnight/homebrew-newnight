class Phpactor < Formula
  desc "Intelligent completion and refactoring tool for PHP"
  homepage "https://phpactor.readthedocs.io/"
  url "https://github.com/phpactor/phpactor/releases/download/2023.06.17-2/phpactor.phar"
  version "2023.06.17-2"
  sha256 "e3257c68694e569bbac34b6d0a7871225785e9b8d3075067291a18eb7b37fc5c"
  license "MIT"

  depends_on "php"
  # bottle do
  #   sha256 x86_64_linux:   "e3257c68694e569bbac34b6d0a7871225785e9b8d3075067291a18eb7b37fc5c"
  #   sha256 x86_64_macos:   "e3257c68694e569bbac34b6d0a7871225785e9b8d3075067291a18eb7b37fc5c"
  # end

  # head do
  #   url "https://github.com/phpactor/phpactor", branch: "master"
  # end

  def install
    # system "composer install"
    bin.install "phpactor.phar" => "phpactor"
    resource("phpactor.phar").stage { bin.install "phpactor.phar" => "phpactor" }
  end

  def caveats
    <<~EOS
      for more information visit:
        https://phpactor.readthedocs.io/en/master/usage/standalone.html
    EOS
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test phpactor`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system bin/"phpactor", "--version"
  end
end
