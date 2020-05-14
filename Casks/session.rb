cask 'session' do
  version '1.0.8'
  sha256 'b3a47debad56e70cad80cf370c9a7b87bdd622b4ded0330c304a526856fd86c2'

  # github.com/loki-project/session-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/loki-project/session-desktop/releases/download/v#{version}/session-messenger-desktop-mac-#{version}.dmg"
  appcast 'https://github.com/loki-project/session-desktop/releases.atom'
  name 'Session'
  homepage 'https://getsession.org/'

  app 'Session.app'

  zap trash: [
               '~/Library/Application Support/Session',
               '~/Library/Caches/Session',
               '~/Library/Preferences/com.loki-project.messenger-desktop.plist',
               '~/Library/Saved Application State/com.loki-project.messenger-desktop.savedState',
             ]
end
