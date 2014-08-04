#!/usr/bin/env bash

# install extension
sudo apt-get install postgresql-9.3-postgis-2.1 -y
sudo -u postgres psql -c "CREATE EXTENSION postgis"
sudo -u postgres psql -d ens -f /usr/share/postgresql/9.3/extension/postgis--2.1.3.sql

# sudo -u postgres psql -c "CREATE EXTENSION postgis_topology;"
# sudo -u postgres psql -d ens -f postgis_topology--2.1.3.sql

# Exportar region
# shp2pgsql -W "LATIN1" cl_regiones_geo postgis_regiones ens | sudo -u postgres psql -d ens
# shp2pgsql -W "LATIN1" cl_regiones_geo coordenadas ens | sudo -u postgres psql -d ens


# shp2pgsql -W "LATIN1" cl_regiones_geo coordenadas ens  >> regiones_coordenadas.sql
# sudo -u postgres psql -d ens < regiones_coordenadas.sql

# shp2pgsql -W "LATIN1" cl_comunas_geo coordenadas ens  >> comunas_coordenadas.sql
# sudo -u postgres psql -d ens < regiones_coordenadas.sql

# shp2pgsql -W "LATIN1" cl_provincias_geo coordenadas ens  >> provincias_coordenadas.sql
# sudo -u postgres psql -d ens < regiones_coordenadas.sql

