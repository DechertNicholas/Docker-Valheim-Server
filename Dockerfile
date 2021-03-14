FROM cm2network/steamcmd:latest
WORKDIR /home/steam
RUN mkdir /home/steam/valheimserver
RUN /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/steam/valheimserver +app_update 896660 +quit
COPY ServerFiles/ .
RUN mkdir .config/unity3d/IronGate/Valheim/worlds -p
USER root
WORKDIR /home/steam
RUN chmod +x start.sh
#RUN chown steam /home/steam/.config/unity3d/IronGate/Valheim/worlds
USER steam