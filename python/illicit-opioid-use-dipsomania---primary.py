# Lewer D, Padmanathan P, Arfeen A, Denaxas S, Forbes H, Gonzalez-Izquierdo A, Hickman M, 2024.

import sys, csv, re

codes = [{"code":"x97488","system":"med"},{"code":"x397261000006115","system":"med"},{"code":"x1971461000006112","system":"med"},{"code":"x397231000006112","system":"med"},{"code":"x52739","system":"med"},{"code":"x1976621000006114","system":"med"},{"code":"x1971451000006110","system":"med"},{"code":"x97488","system":"med"},{"code":"x1976621000006114","system":"med"},{"code":"x397261000006115","system":"med"},{"code":"x397231000006112","system":"med"},{"code":"x1971461000006112","system":"med"},{"code":"x52739","system":"med"},{"code":"x1971451000006110","system":"med"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('illicit-opioid-use-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["illicit-opioid-use-dipsomania---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["illicit-opioid-use-dipsomania---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["illicit-opioid-use-dipsomania---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
