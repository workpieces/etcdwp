cask "etcdwp" do
  version "2.0.0"
  sha256 "fa701ec90774d6806da78c8c40e46a4b473170b10984bd7891ffb3bc93c43d91"

  url "https://github.com/workpieces/etcdwp/releases/download/v#{version}/etcdwp_v#{version}.dmg",
      verified: "github.com/workpieces/etcdwp/"
  name "etcdwp"
  desc "Etcd management application built on the modern with Golang Flutter and SwiftUI"
  homepage "https://workpieces.github.io/etcdwp/#/main"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "etcdwp.app"
end
