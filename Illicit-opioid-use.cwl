cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  illicit-opioid-use-replacement---primary:
    run: illicit-opioid-use-replacement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  illicit-opioid-use-dipsomania---primary:
    run: illicit-opioid-use-dipsomania---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-replacement---primary/output
  illicit-opioid-use-injected---primary:
    run: illicit-opioid-use-injected---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-dipsomania---primary/output
  illicit-opioid-use-injecting---primary:
    run: illicit-opioid-use-injecting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-injected---primary/output
  illicit-opioid-use-therapmethadone---primary:
    run: illicit-opioid-use-therapmethadone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-injecting---primary/output
  agonist-illicit-opioid-use---primary:
    run: agonist-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-therapmethadone---primary/output
  illicit-opioid-use-failed---primary:
    run: illicit-opioid-use-failed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: agonist-illicit-opioid-use---primary/output
  illicit-opioid-use-mixture---primary:
    run: illicit-opioid-use-mixture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-failed---primary/output
  illicit-opioid-use-400microgram---primary:
    run: illicit-opioid-use-400microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-mixture---primary/output
  daily-illicit-opioid-use---primary:
    run: daily-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-400microgram---primary/output
  illicit-opioid-use-opium---primary:
    run: illicit-opioid-use-opium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: daily-illicit-opioid-use---primary/output
  illicit-opioid-use-shared---primary:
    run: illicit-opioid-use-shared---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-opium---primary/output
  illicit-opioid-use-turkey---primary:
    run: illicit-opioid-use-turkey---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-shared---primary/output
  illicit-opioid-use-distortion---primary:
    run: illicit-opioid-use-distortion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-turkey---primary/output
  illicit-opioid-use-unspecified---primary:
    run: illicit-opioid-use-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-distortion---primary/output
  illicit-opioid-use-remission---primary:
    run: illicit-opioid-use-remission---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-unspecified---primary/output
  sublingual-illicit-opioid-use---primary:
    run: sublingual-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-remission---primary/output
  illicit-opioid-use-anileridine---primary:
    run: illicit-opioid-use-anileridine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: sublingual-illicit-opioid-use---primary/output
  illicit-opioid-use-subutex---primary:
    run: illicit-opioid-use-subutex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-anileridine---primary/output
  illicit-opioid-use-injector---primary:
    run: illicit-opioid-use-injector---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-subutex---primary/output
  illicit-opioid-use-suboxone---primary:
    run: illicit-opioid-use-suboxone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-injector---primary/output
  illicit-opioid-use-naloxone---primary:
    run: illicit-opioid-use-naloxone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-suboxone---primary/output
  nondependent-illicit-opioid-use---primary:
    run: nondependent-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-naloxone---primary/output
  illicit-opioid-use-ampoule---primary:
    run: illicit-opioid-use-ampoule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: nondependent-illicit-opioid-use---primary/output
  illicit-opioid-use-diamorphine---primary:
    run: illicit-opioid-use-diamorphine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-ampoule---primary/output
  illicit-opioid-use-dihydrocodeine---primary:
    run: illicit-opioid-use-dihydrocodeine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-diamorphine---primary/output
  episodic-illicit-opioid-use---primary:
    run: episodic-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-dihydrocodeine---primary/output
  illicit-opioid-use-addiction---primary:
    run: illicit-opioid-use-addiction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: episodic-illicit-opioid-use---primary/output
  illicit-opioid-use-poisoning---primary:
    run: illicit-opioid-use-poisoning---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-addiction---primary/output
  illicit-opioid-use-monitoring---primary:
    run: illicit-opioid-use-monitoring---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-poisoning---primary/output
  illicit-opioid-use-analgesics---primary:
    run: illicit-opioid-use-analgesics---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-monitoring---primary/output
  illicit-opioid-use-sharing---primary:
    run: illicit-opioid-use-sharing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-analgesics---primary/output
  illicit-opioid-use-papaveretum---primary:
    run: illicit-opioid-use-papaveretum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-sharing---primary/output
  continuous-illicit-opioid-use---primary:
    run: continuous-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-papaveretum---primary/output
  illicit-opioid-use-infrequent---primary:
    run: illicit-opioid-use-infrequent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: continuous-illicit-opioid-use---primary/output
  illicit-opioid-use-oxymorphone---primary:
    run: illicit-opioid-use-oxymorphone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-infrequent---primary/output
  illicit-opioid-use-combined---primary:
    run: illicit-opioid-use-combined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-oxymorphone---primary/output
  illicit-opioid-use-dextropropoxyphene---primary:
    run: illicit-opioid-use-dextropropoxyphene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-combined---primary/output
  illicit-opioid-use-hydromorphone---primary:
    run: illicit-opioid-use-hydromorphone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-dextropropoxyphene---primary/output
  illicit-opioid-use-dextromoramide---primary:
    run: illicit-opioid-use-dextromoramide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-hydromorphone---primary/output
  polymorphic-illicit-opioid-use---primary:
    run: polymorphic-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-dextromoramide---primary/output
  illicit-opioid-use-piritramide---primary:
    run: illicit-opioid-use-piritramide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: polymorphic-illicit-opioid-use---primary/output
  illicit-opioid-use-dependence---primary:
    run: illicit-opioid-use-dependence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-piritramide---primary/output
  mixed-illicit-opioid-use---primary:
    run: mixed-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-dependence---primary/output
  manic-illicit-opioid-use---primary:
    run: manic-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: mixed-illicit-opioid-use---primary/output
  illicit-opioid-use-reefer---primary:
    run: illicit-opioid-use-reefer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: manic-illicit-opioid-use---primary/output
  residual-illicit-opioid-use---primary:
    run: residual-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-reefer---primary/output
  illicit-opioid-use-reinduction---primary:
    run: illicit-opioid-use-reinduction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: residual-illicit-opioid-use---primary/output
  illicit-opioid-use-lyophilisate---primary:
    run: illicit-opioid-use-lyophilisate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-reinduction---primary/output
  illicit-opioid-use-heroin---primary:
    run: illicit-opioid-use-heroin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-lyophilisate---primary/output
  illicit-opioid-use-phenazocine---primary:
    run: illicit-opioid-use-phenazocine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-heroin---primary/output
  illicit-opioid-use-injury---primary:
    run: illicit-opioid-use-injury---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-phenazocine---primary/output
  illicit-opioid-use-substance---primary:
    run: illicit-opioid-use-substance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-injury---primary/output
  illicit-opioid-use-containing---primary:
    run: illicit-opioid-use-containing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-substance---primary/output
  illicit-opioid-use-ethoheptazine---primary:
    run: illicit-opioid-use-ethoheptazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-containing---primary/output
  illicit-opioid-use-espranor---primary:
    run: illicit-opioid-use-espranor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-ethoheptazine---primary/output
  illicit-opioid-use-detoxification---primary:
    run: illicit-opioid-use-detoxification---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-espranor---primary/output
  accidental-illicit-opioid-use---primary:
    run: accidental-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-detoxification---primary/output
  vpersonal-illicit-opioid-use---primary:
    run: vpersonal-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: accidental-illicit-opioid-use---primary/output
  illicit-opioid-use-meptazinol---primary:
    run: illicit-opioid-use-meptazinol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: vpersonal-illicit-opioid-use---primary/output
  illicit-opioid-use-scale---primary:
    run: illicit-opioid-use-scale---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-meptazinol---primary/output
  illicit-opioid-use-dipianone---primary:
    run: illicit-opioid-use-dipianone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-scale---primary/output
  illicit-opioid-use-substitution---primary:
    run: illicit-opioid-use-substitution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-dipianone---primary/output
  illicit-opioid-use-kaolin---primary:
    run: illicit-opioid-use-kaolin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-substitution---primary/output
  behavioural-illicit-opioid-use---primary:
    run: behavioural-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-kaolin---primary/output
  illicit-opioid-use-buprenorphine---primary:
    run: illicit-opioid-use-buprenorphine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: behavioural-illicit-opioid-use---primary/output
  illicit-opioid-use-schizophrenialike---primary:
    run: illicit-opioid-use-schizophrenialike---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-buprenorphine---primary/output
  illicit-opioid-use-lofexidine---primary:
    run: illicit-opioid-use-lofexidine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-schizophrenialike---primary/output
  illicit-opioid-use-dementium---primary:
    run: illicit-opioid-use-dementium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-lofexidine---primary/output
  illicit-opioid-use-questionnaire---primary:
    run: illicit-opioid-use-questionnaire---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-dementium---primary/output
  illicit-opioid-use-naltrexone---primary:
    run: illicit-opioid-use-naltrexone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-questionnaire---primary/output
  illicit-opioid-use-groin---primary:
    run: illicit-opioid-use-groin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-naltrexone---primary/output
  illicit-opioid-use-opiate---primary:
    run: illicit-opioid-use-opiate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-groin---primary/output
  weekly-illicit-opioid-use---primary:
    run: weekly-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-opiate---primary/output
  illicit-opioid-use-maintenance---primary:
    run: illicit-opioid-use-maintenance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: weekly-illicit-opioid-use---primary/output
  illicit-opioid-use-pethidine---primary:
    run: illicit-opioid-use-pethidine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-maintenance---primary/output
  illicit-opioid-use-linctus---primary:
    run: illicit-opioid-use-linctus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-pethidine---primary/output
  illicit-opioid-use-complication---primary:
    run: illicit-opioid-use-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-linctus---primary/output
  active-illicit-opioid-use---primary:
    run: active-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-complication---primary/output
  delusional-illicit-opioid-use---primary:
    run: delusional-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: active-illicit-opioid-use---primary/output
  illicit-opioid-use-diluent---primary:
    run: illicit-opioid-use-diluent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: delusional-illicit-opioid-use---primary/output
  illicit-opioid-use-sulphate---primary:
    run: illicit-opioid-use-sulphate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-diluent---primary/output
  illicit-opioid-use-physeptone---primary:
    run: illicit-opioid-use-physeptone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-sulphate---primary/output
  illicit-opioid-use-overdose---primary:
    run: illicit-opioid-use-overdose---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-physeptone---primary/output
  illicit-opioid-use-levorphanol---primary:
    run: illicit-opioid-use-levorphanol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-overdose---primary/output
  illicit-opioid-use-elixir---primary:
    run: illicit-opioid-use-elixir---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-levorphanol---primary/output
  illicit-opioid-use-month---primary:
    run: illicit-opioid-use-month---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-elixir---primary/output
  illicit-opioid-use-suppository---primary:
    run: illicit-opioid-use-suppository---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-month---primary/output
  illicit-opioid-use-environment---primary:
    run: illicit-opioid-use-environment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-suppository---primary/output
  illicit-opioid-use-hallucinatory---primary:
    run: illicit-opioid-use-hallucinatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-environment---primary/output
  other-illicit-opioid-use---primary:
    run: other-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-hallucinatory---primary/output
  illicit-opioid-use-cocaine---primary:
    run: illicit-opioid-use-cocaine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: other-illicit-opioid-use---primary/output
  illicit-opioid-use-reaction---primary:
    run: illicit-opioid-use-reaction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-cocaine---primary/output
  intravenous-illicit-opioid-use---primary:
    run: intravenous-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-reaction---primary/output
  illicit-opioid-use-blocking---primary:
    run: illicit-opioid-use-blocking---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: intravenous-illicit-opioid-use---primary/output
  illicit-opioid-use-capsule---primary:
    run: illicit-opioid-use-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-blocking---primary/output
  illicit-opioid-use-fentanyl---primary:
    run: illicit-opioid-use-fentanyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-capsule---primary/output
  previous-illicit-opioid-use---primary:
    run: previous-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-fentanyl---primary/output
  illicit-opioid-use-oxycodone---primary:
    run: illicit-opioid-use-oxycodone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: previous-illicit-opioid-use---primary/output
  illicit-opioid-use-controlled---primary:
    run: illicit-opioid-use-controlled---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-oxycodone---primary/output
  depressive-illicit-opioid-use---primary:
    run: depressive-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-controlled---primary/output
  illicit-opioid-use-pentazocine---primary:
    run: illicit-opioid-use-pentazocine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: depressive-illicit-opioid-use---primary/output
  affective-illicit-opioid-use---primary:
    run: affective-illicit-opioid-use---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-pentazocine---primary/output
  illicit-opioid-use-tartrazine---primary:
    run: illicit-opioid-use-tartrazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: affective-illicit-opioid-use---primary/output
  illicit-opioid-use-phenoperidine---primary:
    run: illicit-opioid-use-phenoperidine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-tartrazine---primary/output
  illicit-opioid-use-tramadol---primary:
    run: illicit-opioid-use-tramadol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-phenoperidine---primary/output
  illicit-opioid-use-alphaprodine---primary:
    run: illicit-opioid-use-alphaprodine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-tramadol---primary/output
  illicit-opioid-use-nalbuphine---primary:
    run: illicit-opioid-use-nalbuphine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-alphaprodine---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: illicit-opioid-use-nalbuphine---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
