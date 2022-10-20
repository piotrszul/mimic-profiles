|MIMIC Element            |FHIR Element                         |FHIR Profile/Resources                                                                          |Notes                                                                                       |
|-------------------------|-------------------------------------|------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
|**Table: microbiologyevents**|                                     |                                                                                                |                                                                                            |
|subject\_id              |Observation.subject                  |[MimicObservationMicroTest], [MimicObservationMicroOrg], [MimicObservationMicroSusc]|                                                                                            |
|hadm\_id                 |Observation.encounter                |[MimicObservationMicroTest], [MimicObservationMicroOrg], [MimicObservationMicroSusc]|                                                                                            |
|micro\_specimen\_id      |Observation.identifier               |[MimicObservationMicroTest], [MimicObservationMicroOrg], [MimicObservationMicroSusc]|part of identifier, concatenated with other elements to make full identifier                |
|                         |Observation.derivedFrom              |[MimicObservationMicroOrg], [MimicObservationMicroSusc]                                 |                                                                                            |
|                         |Observation.hasMember                |[MimicObservationMicroTest], [MimicObservationMicroOrg]                                 |                                                                                            |
|                         |Observation.specimen                 |[MimicObservationMicroSusc]                                                                 |                                                                                            |
|charttime                |Observation.effectiveDateTime        |[MimicObservationMicroTest]                                                                 |Time is for when test is recorded                                                           |
|                         |Specimen.collection.collectedDateTime|[MimicSpecimen]                                                                                 |                                                                                            |
|spec\_itemid             |Specimen.type.code                   |[MimicSpecimen]                                                                                 |                                                                                            |
|spec\_type\_desc         |Specimen.type.display                |[MimicSpecimen]                                                                                 |                                                                                            |
|storetime                |Observation.effectiveDateTime        |[MimicObservationMicroSusc]                                                                 |Time is for when result is available                                                        |
|test\_itemid             |Observation.identifier               |[MimicObservationMicroTest], [MimicObservationMicroOrg], [MimicObservationMicroSusc]|part of identifier for all microbiology resources                                           |
|                         |Observation.code.coding.code         |[MimicObservationMicroTest]                                                                 |                                                                                            |
|                         |Observation.derivedFrom              |[MimicObservationMicroOrg], [MimicObservationMicroSusc]                                 |                                                                                            |
|                         |Observation.hasMember                |[MimicObservationMicroTest], [MimicObservationMicroOrg]                                 |                                                                                            |
|test\_name               |Observation.code.coding.display      |[MimicObservationMicroTest]                                                                 |                                                                                            |
|org\_itemid              |Observation.code.coding.code         |[MimicObservationMicroOrg]                                                                  |reference to organism, identifer is combo of org\_itemid, test\_itemid and microspecimen\_id|
|                         |Observation.identifier               |[MimicObservationMicroOrg], [MimicObservationMicroSusc]                                 |Part of a larger identifier                                                                 |
|                         |Observation.hasMember                |[MimicObservationMicroTest], [MimicObservationMicroOrg]                                 |Part of a larger identifier                                                                 |
|                         |Observation.derivedFrom              |[MimicObservationMicroSusc]                                                                 |Part of a larger identifier                                                                 |
|org\_name                |Observation.code.coding.display      |[MimicObservationMicroOrg]                                                                  |                                                                                            |
|isolate\_num             |Observation.identifier               |[MimicObservationMicroSusc]                                                                 |Part of the micro org identifier                                                            |
|                         |Observation.hasMember                |[MimicObservationMicroOrg]                                                                  |Part of the referneced micro org identifier                                                 |
|ab\_itemid               |Observation.identifier               |[MimicObservationMicroSusc]                                                                 |Part of micro susc identifier                                                               |
|                         |Observation.hasMember                |[MimicObservationMicroOrg]                                                                  |Part of reference to micro susc identifier                                                  |
|                         |Observation.code.coding.code         |[MimicObservationMicroSusc]                                                                 |                                                                                            |
|ab\_name                 |Observation.code.coding.display      |[MimicObservationMicroSusc]                                                                 |                                                                                            |
|dilution\_comparison     |Observation.extension.comparator     |[MimicObservationMicroSusc]                                                                 |Dilution extension                                                                          |
|dilution\_value          |Observation.extension.value          |[MimicObservationMicroSusc]                                                                 |Dilution extension                                                                          |
|interpretation           |Observation.valueCodeableConcept     |[MimicObservationMicroSusc]                                                                 |                                                                                            |
|comments                 |Observation.valueString              |[MimicObservationMicroTest]                                                                 |                                                                                            |
{: .grid #grid}

{% include link-list.md %}