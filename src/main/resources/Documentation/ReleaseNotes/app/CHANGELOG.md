NIST HL7V2 General Validation Tool (GVT) Changelog

[1.3.1] - 2025-04-10
### Added
    - In profile viewer, added code system next to single coded elements.
    - In profile viewer, in the datatype tab, conformance statements are shown for the special DTM types.
    - In profile viewer, complex conformance statements defined at the segment level are now shown on the segment row.
    - Added NHCS CDA Release 3.1 tool scope.

### Fixed
    - Tool scope deletion now works for all domains

[1.3.0] - 2025-03-31

### Added
    - Tool is can now handle multiple version of the hl7v2 validation engine.
    - In profile viewer, added datatype popup view.
    - Added context base upload validation step, resource bundle coming from TCAMT or manually uploaded will not be saved if file don't pass the validation.
    
### Changed
    - hl7v2 validation engine is now 1.7.0.rev1-SNAPSHOT by default
    - Run on MySQL 8

[1.2.0] - 2023-03-03
### Changed
    - Update in the validation engine: GVT now uses the new version of the validation engine compatible with new Value Set file format, Co-constraints and slicing features. 


[1.0.1] - 2022-04-22
### Changed
    - Update in the validation engine: Added a "Strength" attribute (optional) to Constraint elements, with possible values "SHALL" and "SHOULD", which will classify the constraint failure as error and warning respectively, if the strength attribute is not populated, the constraint failure will default to error 

[1.0.1] - 2022-04-22
### Added
    - Initial release of the GVT out of beta. 







