FROM timescaledev/timescaledb-ha:pg12-ts2.0-latest

#######################################################################
# Prepare the build requirements for the rdkit compilation:
RUN apt update && apt-get install -y --no-install-recommends curl ca-certificates gnupg && \
    curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
#    deb http://apt.postgresql.org/pub/repos/apt buster-pgdg main  && \
    sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt buster-pgdg main" > /etc/apt/sources.list.d/pgdg.list' && \
    apt-get update && \
    apt install postgresql-common && \
    ( echo ; ) | sh /usr/share/postgresql-common/pgdg/apt.postgresql.org.sh
# Done.
RUN apt-get -y install postgresql-12-cron

# Configure pg_cron

RUN echo "shared_preload_libraries = 'pg_cron'" >> /var/lib/postgresql/data/postgresql.conf
RUN echo "cron.database_name = 'postgres'" >> /var/lib/postgresql/data/postgresql.conf
