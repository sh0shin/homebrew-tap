cask 'citrix-workspace' do
  version '20.12.0.3:1611224075_12f21f262108fe6845730cf864d584da'
  sha256 '77e7f32de0378c5a34f4206d6adb83a61d1c5f1b09c39d36e5b48d6f06ca7287'

  #url "https://downloads.citrix.com/#{version.after_comma.before_colon}/CitrixWorkspaceApp.dmg?__gda__=#{version.after_colon}"
  url "https://downloads.citrix.com/18878/CitrixWorkspaceApp.dmg?__gda__=#{version.after_colon}"

  appcast 'https://www.citrix.com/downloads/workspace-app/mac/workspace-app-for-mac-latest.html'
  name 'Citrix Workspace'
  homepage 'https://www.citrix.com/products/workspace-app/'

  pkg 'Install Citrix Workspace.pkg'

  uninstall launchctl: [
                         'com.citrix.AuthManager_Mac',
                         'com.citrix.ReceiverHelper',
                         'com.citrix.ServiceRecords',
                         'com.citrix.ctxusbd',
                       ],
            quit:      [
                         'Citrix.ServiceRecords',
                         'com.citrix.ReceiverHelper',
                         'com.citrix.receiver.nomas',
                       ],
            pkgutil:   'com.citrix.ICAClient'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.citrix.receiver.nomas.sfl*',
               '~/Library/Application Support/com.citrix.receiver.nomas',
               '~/Library/Caches/com.citrix.receiver.nomas',
               '~/Library/Logs/Citrix Workspace',
               '~/Library/Preferences/com.citrix.receiver.nomas.plist',
               '~/Library/Preferences/com.citrix.receiver.nomas.plist.lockfile',
               '~/Library/Preferences/com.citrix.ReceiverFTU.AccountRecords.plist',
               '~/Library/Preferences/com.citrix.ReceiverFTU.AccountRecords.plist.lockfile',
             ]
end
