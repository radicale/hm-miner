FROM quay.io/team-helium/miner:miner-arm64_2021.09.03.0_GA

WORKDIR /opt/miner

COPY docker.config /opt/miner/releases/2021.09.03.0_GA/sys.config
COPY start-miner.sh /opt/miner/start-miner.sh
COPY gen-region.sh /opt/miner/gen-region.sh

ENTRYPOINT ["/opt/miner/start-miner.sh"]
