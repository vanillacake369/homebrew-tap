# typed: false
# frozen_string_literal: true

# This file is hand-generated for v0.1.0 because the v0.1.0 release run
# could not push to vanillacake369/homebrew-tap (HOMEBREW_TAP_GITHUB_TOKEN
# secret unset at the time). Future releases regenerate this file
# automatically via goreleaser once the secret is added to the repo.
class TonysAgentTelemetry < Formula
  desc "Local-first multi-provider LLM agent telemetry TUI"
  homepage "https://github.com/vanillacake369/tonys-agent-telemetry"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vanillacake369/tonys-agent-telemetry/releases/download/v0.1.0/tonys-agent-telemetry_darwin_amd64.tar.gz"
      sha256 "03575e10e40f135e954207e10bc1b47827744dd9faceb3001d4f8a5afbe41e11"

      def install
        bin.install "tonys-agent-telemetry"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/vanillacake369/tonys-agent-telemetry/releases/download/v0.1.0/tonys-agent-telemetry_darwin_arm64.tar.gz"
      sha256 "6e2998e3852168977b33bbe8a52f3682e154b3a1c54a4cd154239d58b38ae0a0"

      def install
        bin.install "tonys-agent-telemetry"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/vanillacake369/tonys-agent-telemetry/releases/download/v0.1.0/tonys-agent-telemetry_linux_amd64.tar.gz"
      sha256 "23b374b8055678b629dd9ed8cf4e1b18a3a8876a60119e78d7941b3bf738de32"

      def install
        bin.install "tonys-agent-telemetry"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vanillacake369/tonys-agent-telemetry/releases/download/v0.1.0/tonys-agent-telemetry_linux_arm64.tar.gz"
      sha256 "6e3665b0660b895a925572259bbf481c97bff8400d3472ac0ea03d834bcb2324"

      def install
        bin.install "tonys-agent-telemetry"
      end
    end
  end

  test do
    system "#{bin}/tonys-agent-telemetry", "--version"
  end
end
