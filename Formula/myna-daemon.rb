# frozen_string_literal: true

# Myna's Python HTTP daemon — chunking, extract, summarize, /synthesize.
# Installed via Homebrew so the .app cask can depend on it.
class MynaDaemon < Formula
  include Language::Python::Virtualenv

  desc "Myna's Python HTTP daemon (chunking, extract, summarize, /synthesize)"
  homepage "https://github.com/PrerakGada/myna"
  url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
  # release.yml does NOT bump this formula on every release — it bumps the cask
  # only. Daemon updates ride the cask's homepage release; bump this manually
  # when daemon code changes meaningfully.
  sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  license "MIT"
  head "https://github.com/PrerakGada/myna.git", branch: "main"

  depends_on "python@3.13"
  # Rust toolchain is needed to build pydantic_core and watchfiles from source
  # (Homebrew installs PyPI resources via --no-binary :all:, so even pure-Python
  # wheels are rebuilt from sdist; Rust extensions can't bootstrap without it).
  depends_on "rust" => :build

  # The daemon needs an mlx-audio Kokoro engine on :8765. That engine is too
  # heavy to bundle via brew (multi-GB model weights, Apple-Silicon-only). We
  # document the engine install in `brew info` caveats below and skip it as a
  # dependency.

  resource "annotated-doc" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "annotated-types" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "anyio" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "babel" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "certifi" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "charset-normalizer" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "click" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "courlan" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "dateparser" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "fastapi" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "h11" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "htmldate" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "httpcore" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "httptools" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "httpx" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "idna" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "Jinja2" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "jusText" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "lxml" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "lxml_html_clean" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "MarkupSafe" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "pydantic" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "pydantic_core" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "python-dateutil" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "python-dotenv" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "pytz" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "PyYAML" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "regex" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "six" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "starlette" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "tld" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "trafilatura" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "typing-inspection" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "typing_extensions" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "tzlocal" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "urllib3" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "uvicorn" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "uvloop" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "watchfiles" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end

  resource "websockets" do
    url "https://github.com/PrerakGada/myna/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "4f6a4f9704d2fdabac6c5464cf3bbe81df93e409df580fb710293c085e2a9ae1"
  end


  def install
    # The repo is a monorepo; daemon/ holds the Python package.
    #
    # virtualenv_install_with_resources is hard-coded to use `buildpath`
    # (the extraction root), so we can't use it directly here — pyproject.toml
    # lives at daemon/pyproject.toml, not at the root.
    #
    # Pattern: create the venv, install declared `resource` blocks (which are
    # all of daemon's PyPI deps + their transitive deps, pinned + sha-locked
    # for reproducibility), then pip_install_and_link the daemon subdir for
    # our own package. Homebrew's pip_install_and_link enforces --no-deps,
    # which is exactly what we want since deps came from `resources`.
    venv = virtualenv_create(libexec, "python3.13")
    venv.pip_install resources
    venv.pip_install_and_link buildpath/"daemon"

    # Convenience symlink so users can run `myna-daemon` (matches the LaunchAgent).
    (bin/"myna-daemon").write <<~SH
      #!/bin/bash
      exec "#{libexec}/bin/python" -m myna "$@"
    SH
    chmod 0755, bin/"myna-daemon"

    # Default config (only written if not present — install logic mirrors install.sh).
    (etc/"myna").mkpath
    keybindings = etc/"myna/keybindings.json"
    return if keybindings.exist?

    keybindings.write <<~JSON
      {
        "speak_selection_full":    { "mods": ["cmd","alt","shift"], "key": "s" },
        "speak_selection_summary": { "mods": ["cmd","alt","shift"], "key": "a" },
        "read_chrome_article":     { "mods": ["cmd","alt","shift"], "key": "r" },
        "pause_resume":            { "mods": ["cmd","alt","shift"], "key": "space" },
        "stop":                    { "mods": ["cmd","alt","shift"], "key": "." }
      }
    JSON
  end

  # Auto-managed LaunchAgent via Homebrew's `brew services` interface. Users
  # can `brew services start myna-daemon` once and forget.
  service do
    run [opt_bin/"myna-daemon"]
    keep_alive true
    log_path   var/"log/myna-daemon.log"
    error_log_path var/"log/myna-daemon.log"
    working_dir var/"myna"
    environment_variables MYNA_CONFIG_DIR: etc/"myna"
  end

  def caveats
    <<~EOS
      Myna's daemon is now installed.

      Start it (and have it relaunch on boot) with:
        brew services start myna-daemon

      The daemon expects an mlx-audio Kokoro TTS engine on http://127.0.0.1:8765.
      That engine is too heavy to bundle via brew. Install it yourself with:

        python3.13 -m venv ~/.venvs/mlx-audio
        ~/.venvs/mlx-audio/bin/pip install mlx-audio

      Then run the engine (or wrap it in your own LaunchAgent):
        ~/.venvs/mlx-audio/bin/python -m mlx_audio.server --port 8765

      Config lives in #{etc}/myna/.
      Logs:     #{var}/log/myna-daemon.log
    EOS
  end

  test do
    # The package exposes a `myna` console-script that responds to --help.
    assert_match "usage", shell_output("#{bin}/myna-daemon --help 2>&1")
  end
end
