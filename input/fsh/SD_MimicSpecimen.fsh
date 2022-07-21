Profile:        MimicSpecimen
Parent:         Specimen
Id:             mimic-specimen
Title:          "MIMIC Specimen"
Description:    "A MIMIC lab specimen profile based on the baes FHIR R4 Specimen."

// slice identifer system for labs/micro
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Specimen identifier.system slicing"

* identifier contains
  LAB 0..1 
  and MICRO 0..1
* identifier[LAB].system 1..1
* identifier[LAB].system = $IdentifierSpecimenLab
* identifier[LAB].value ^short = "Specimen labevents identifier"
* identifier[LAB].value 1..1

* identifier[MICRO].system 1..1
* identifier[MICRO].system = $IdentifierSpecimenMicro
* identifier[MICRO].value ^short = "Specimen microbiology identifier"
* identifier[MICRO].value 1..1


* type from $MimicSpecimenType

// referencing must be to MIMIC profiles
* subject only Reference(MimicPatient)