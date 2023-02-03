<?xml version="1.0" encoding="utf-8"?>
<Containers>
  <TemplateURL>https://raw.githubusercontent.com/paulpoco/docker-templates/master/paulpoco/signum-node-valheim-VPN.xml</TemplateURL>
  <Beta>True</Beta>
  <Category>Crypto:</Category>
  <Date>2023-02-02</Date>
  <Changes>October 6, 2021 Signum-node for Unraid
    January 30, 2022 Remove port 8121
    January 31, 2022 Fix registry url
    Febuary 2, 2023 change to valheim version
  </Changes>
  <Project>https://github.com/signum-network/signum-node/</Project>
  <Name>signum-node-valheim-VPN</Name>
  <Description>
    https://www.signum.network/
    The world's first HDD-mined cryptocurrency using an energy efficient and fair Proof-of-Commitment (PoC+) consensus algorithm.
    The two supported database backends are:
      H2 (embedded, recommended)
      MariaDB (advanced users)
  </Description>
  <Overview>
    Proof of Commitment - ASIC proof / Energy efficient and sustainable mining
    No ICO/Airdrops/Premine
    Turing-complete smart contracts, via Signum SmartJ
    Asset Exchange; Digital Goods Store; Crowdfunds, NFTs, games, and more (via smart contracts); and Alias system
  </Overview>
  <Support>https://github.com/signum-network/signum-node</Support>
  <Registry>https://hub.docker.com/r/signumnetwork/node</Registry>
  <GitHub>https://github.com/signum-network/signum-node</GitHub>
  <Repository>signumnetwork/node:3.5.3-h2</Repository>
  <BindTime>true</BindTime>
  <Privileged>false</Privileged>
  <Networking>
    <Mode>bridge</Mode>
    <Publish>
      <Port>
        <HostPort>7223</HostPort>
        <ContainerPort>7223</ContainerPort>
        <Protocol>tcp</Protocol>
      </Port>
      <Port>
        <HostPort>7225</HostPort>
        <ContainerPort>7225</ContainerPort>
        <Protocol>tcp</Protocol>
      </Port>
    </Publish>
  </Networking>
  <Data>
    <Volume>
      <HostDir>/mnt/user/appdata/signum-node-valheim-VPN/conf</HostDir>
      <ContainerDir>/conf</ContainerDir>
      <Mode>rw</Mode>
    </Volume>
    <Volume>
      <HostDir>/mnt/user/appdata/signum-node-valheim-VPN/db</HostDir>
      <ContainerDir>/db</ContainerDir>
      <Mode>rw</Mode>
    </Volume>
  </Data>
  <WebUI>http://[IP]:[PORT:9125]</WebUI>
  <Banner></Banner>
  <Icon>https://raw.githubusercontent.com/signum-network/signum-node/main/resources/images/signum_overlay_logo.ico</Icon>
  <ExtraParams>--init</ExtraParams>
</Containers>
