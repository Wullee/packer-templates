# frozen_string_literal: true

describe 'sshd configuration' do
  describe command('sudo sshd -T') do
    its(:stdout) { should include(*EXPECTED_SSHD_CONFIG) }
  end
end

EXPECTED_SSHD_CONFIG = <<~EOF.split("\n")
  allowtcpforwarding no
  challengeresponseauthentication no
  ciphers chacha20-poly1305@openssh.com,aes256-gcm@openssh.com,aes128-gcm@openssh.com,aes256-ctr,aes192-ctr,aes128-ctr
  hostkey /etc/ssh/ssh_host_ed25519_key
  hostkey /etc/ssh/ssh_host_rsa_key
  kexalgorithms curve25519-sha256@libssh.org,diffie-hellman-group-exchange-sha256
  listenaddress 0.0.0.0:22
  listenaddress [::]:22
  macs hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,hmac-ripemd160-etm@openssh.com,umac-128-etm@openssh.com,hmac-sha2-512,hmac-sha2-256,hmac-ripemd160,umac-128@openssh.com
  passwordauthentication no
  permitrootlogin no
  protocol 2
  pubkeyauthentication yes
EOF
