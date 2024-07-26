
apt-get update

# Install PostgreSQL
apt-get install -y postgresql postgresql-contrib

# Start PostgreSQL service
systemctl start postgresql

# Enable PostgreSQL to start on boot
systemctl enable postgresql


echo "host all all 0.0.0.0/0 md5" >> /etc/postgresql/<version>/main/pg_hba.conf
echo "listen_addresses='*'" >> /etc/postgresql/<version>/main/postgresql.conf

# Restart PostgreSQL to apply configuration changes
systemctl restart postgresql

