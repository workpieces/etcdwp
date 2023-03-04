cask "etcdwp" do
    version "2.0.0"
    sha256 :no_check
    url "https://github.com/workpieces/etcdwp/releases/download/v2.0.1-beta/etcdwp_v2.0.0.zip",
        verified: "github.com/workpieces/etcdwp/"
    name "etcdwp"
    desc " etcdwp（这个 repo）相比，etcdwp 2 提供了更多令人愉快的功能，例如键值管理（是的，终于！），暗模式等等。除此之外，etcdwp 2从一开始就用原生技术重写，使其更现代、更漂亮、更快！"
    homepage "https://github.com/workpieces/etcdwp"
    app "etcdwp.app"
    zap trash: "~/.etcdwp"
  end