<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <ns prefix="sdtc" uri="urn:hl7-org:sdtc"/>
    <ns prefix="cda" uri="urn:hl7-org:v3"/>
    <phase id="errors">
        <active pattern="PATIENT-DEMOGRAPHICS"/>
        <active pattern="CAUSE-OF-DEATH"/>
        <active pattern="DEATH-ADMIN"/>
    </phase>
    <pattern id="PATIENT-DEMOGRAPHICS" name="PATIENT-DEMOGRAPHICS">
        <rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole">
            <assert test="cda:patient/cda:administrativeGenderCode[@code = 'M']">Patient Sex Must be
                M</assert>
        </rule>
    </pattern>
    <pattern id="CAUSE-OF-DEATH" name="CAUSE-OF-DEATH">
        <rule
            context="//cda:section[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.2.4' and @extension = '2016-12-01']]">
            <assert
                test="cda:entry/cda:organizer[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.9' and @extension = '2016-12-01']]/cda:component/cda:observation[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.40' and @extension = '2016-12-01']]/cda:value[@code = 'Y']"
                >Injury involved must be Y</assert>
            <assert
                test="cda:entry/cda:observation[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.14' and @extension = '2016-12-01']]/cda:value[@code = '373067005']"
                >Tobacco Use must be 373067005</assert>
        </rule>
    </pattern>
    <pattern id="DEATH-ADMIN" name="DEATH-ADMIN">
        <rule
            context="//cda:section[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.2.3' and @extension = '2016-12-01']]">
            <assert
                test="cda:entry/cda:procedure[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.2' and @extension = '2016-12-01']]/cda:entryRelationship/cda:observation[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3' and @extension = '2016-12-01']]/cda:value[@value = 'true']"
                >Results available must be true</assert>
        </rule>
    </pattern>
</schema>
