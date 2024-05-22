# Lewer D, Padmanathan P, Arfeen A, Denaxas S, Forbes H, Gonzalez-Izquierdo A, Hickman M, 2024.

import sys, csv, re

codes = [{"code":"x37568","system":"med"},{"code":"x1976441000006116","system":"med"},{"code":"x36241","system":"med"},{"code":"x1976421000006111","system":"med"},{"code":"x397941000006113","system":"med"},{"code":"x42456","system":"med"},{"code":"x1971421000006118","system":"med"},{"code":"x397921000006118","system":"med"},{"code":"x103991","system":"med"},{"code":"x397901000006111","system":"med"},{"code":"x397661000006117","system":"med"},{"code":"x34249","system":"med"},{"code":"x1971441000006113","system":"med"},{"code":"x397651000006119","system":"med"},{"code":"x50964","system":"med"},{"code":"x1976281000006111","system":"med"},{"code":"x1976351000006114","system":"med"},{"code":"x1976471000006112","system":"med"},{"code":"x1976611000006118","system":"med"},{"code":"x1976501000006117","system":"med"},{"code":"x397931000006115","system":"med"},{"code":"x37568","system":"med"},{"code":"x1976281000006111","system":"med"},{"code":"x1976471000006112","system":"med"},{"code":"x1976351000006114","system":"med"},{"code":"x1971421000006118","system":"med"},{"code":"x397901000006111","system":"med"},{"code":"x34249","system":"med"},{"code":"x1971441000006113","system":"med"},{"code":"x50964","system":"med"},{"code":"x397921000006118","system":"med"},{"code":"x42456","system":"med"},{"code":"x36241","system":"med"},{"code":"x397661000006117","system":"med"},{"code":"x1976501000006117","system":"med"},{"code":"x397941000006113","system":"med"},{"code":"x1976441000006116","system":"med"},{"code":"x397931000006115","system":"med"},{"code":"x1976421000006111","system":"med"},{"code":"x103991","system":"med"},{"code":"x1976611000006118","system":"med"},{"code":"x397651000006119","system":"med"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('illicit-opioid-use-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["illicit-opioid-use-distortion---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["illicit-opioid-use-distortion---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["illicit-opioid-use-distortion---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
