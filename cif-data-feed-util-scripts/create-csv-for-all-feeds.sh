echo "Generating infrastructure/botnet feed..."
cif -q infrastructure/botnet -c 50 -l 10000 -p csv > infrastructure-botnet.csv
echo "Generating infrastructure/scan feed..."
cif -q infrastructure/scan -c 50 -l 10000 -p csv > infrastructure-scan.csv
echo "Generating infrastructure/phishing feed..."
cif -q infrastructure/phishing -c 50 -l 10000 -p csv > infrastructure-phishing.csv
echo "Generating infrastructure/malware feed..."
cif -q infrastructure/malware -c 50 -l 10000 -p csv > infrastructure-malware.csv
echo "Generating infrastructure/spam feed..."
cif -q infrastructure/spam -c 50 -l 10000 -p csv > infrastructure-spam.csv
echo "Generating infrastructure/suspicious feed..."cif -q infrastructure/spamvertising -c 50 -l 10000 -p csv > infrastructure-spamvertising.csv
cif -q infrastructure/suspicious -c 50 -l 10000 -p csv > infrastructure-suspicious.csv
echo "Generating infrastructure/whitelist feed..."
cif -q infrastructure/whitelist -c 50 -l 10000 -p csv > infrastructure-whitelist.csv
echo "Generating infrastructure/warez feed..."
cif -q infrastructure/warez -c 50 -l 10000 -p csv > infrastructure-warez.csv
echo "Generating infrastructure/fastflux feed..."
cif -q infrastructure/fastflux -c 50 -l 10000 -p csv > infrastructure-fastflux.csv

echo "Generating domain/botnet feed..."
cif -q domain/botnet -c 50 -l 10000 -p csv > domain-botnet.csv
echo "Generating domain/phishing feed..."
cif -q domain/phishing -c 50 -l 10000 -p csv > domain-phishing.csv
echo "Generating domain/malware feed..."
cif -q domain/malware -c 50 -l 10000 -p csv > domain-malware.csv
echo "Generating domain/spam feed..."
cif -q domain/spam -c 50 -l 10000 -p csv > domain-spam.csv
echo "Generating domain/spamvertising feed..."
cif -q domain/spamvertising -c 50 -l 10000 -p csv > domain-spamvertising.csv
echo "Generating domain/suspicious feed..."
cif -q domain/suspicious -c 50 -l 10000 -p csv > domain-suspicious.csv
echo "Generating domain/whitelist feed..."
cif -q domain/whitelist -c 50 -l 10000 -p csv > domain-whitelist.csv
echo "Generating domain/fastflux feed..."
cif -q domain/fastflux -c 50 -l 10000 -p csv > domain-fastflux.csv

echo "Generating email/phishing feed..."
cif -q email/phishing -c 50 -l 10000 -p csv > email-phishing.csv
echo "Generating email/spam feed..."
cif -q email/spam -c 50 -l 10000 -p csv > email-spam.csv
echo "Generating email/spamvertising feed..."
cif -q email/spamvertising -c 50 -l 10000 -p csv > email-spamvertising.csv
echo "Generating email/suspicious feed..."
cif -q email/suspicious -c 50 -l 10000 -p csv > email-suspicious.csv
echo "Generating email/registrant feed..."
cif -q email/registrant -c 50 -l 10000 -p csv > email-registrant.csv
echo "Generating email/whitelist feed..."
cif -q email/whitelist -c 50 -l 10000 -p csv > email-whitelist.csv

echo "Generating url/botnet feed..."
cif -q url/botnet -c 50 -l 10000 -p csv > url-botnet.csv
echo "Generating url/phishing feed..."
cif -q url/phishing -c 50 -l 10000 -p csv > url-phishing.csv
echo "Generating url/malware feed..."
cif -q url/malware -c 50 -l 10000 -p csv > url-malware.csv
echo "Generating url/spam feed..."
cif -q url/spam -c 50 -l 10000 -p csv > url-spam.csv
echo "Generating url/spamvertising feed..."
cif -q url/spamvertising -c 50 -l 10000 -p csv > url-spamvertising.csv
echo "Generating url/suspicious feed..."
cif -q url/suspicious -c 50 -l 10000 -p csv > url-suspicious.csv
echo "Generating url/whitelist feed..."
cif -q url/whitelist -c 50 -l 10000 -p csv > url-whitelist.csv

echo "Generating malware/md5 feed..."
cif -q malware/md5 -c 50 -l 10000 -p csv > malware-md5.csv
echo "Generating malware/sha1 feed..."
cif -q malware/sha1 -c 50 -l 10000 -p csv > malware-sha1.csv
echo "Generating malware/uuid feed..."
cif -q malware/uuid -c 50 -l 10000 -p csv > malware-uuid.csv
