<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <ns prefix="sdtc" uri="urn:hl7-org:sdtc"/>
    <ns prefix="cda" uri="urn:hl7-org:v3"/>
    <phase id="errors">
        <!--
        <active pattern="PATIENT-DEMOGRAPHICS"/>
        -->
        <active pattern="CAUSE-OF-DEATH"/>
        <!--
        <active pattern="DEATH-ADMIN"/>
        -->
        <active pattern="EXISTENCE-CHECKS"/>
    </phase>
    <!--
    <pattern id="PATIENT-DEMOGRAPHICS" name="PATIENT-DEMOGRAPHICS">
        <rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole">
            <assert test="cda:patient/cda:administrativeGenderCode[@code = 'F']">Patient Sex Must be
                F</assert>

        </rule>
    </pattern>
    -->
    <pattern id="CAUSE-OF-DEATH" name="CAUSE-OF-DEATH">
        
        
        <rule
            context="//cda:section[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.2.5' and @extension = '2016-12-01']]">      
        
            <assert
                test="cda:entry/cda:organizer[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.26' and @extension = '2016-12-01']]/cda:component/cda:observation[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.27' and @extension = '2016-12-01']]/cda:code[@code = '80356-9']"
                >Cause of Death Code must be 80356-9</assert>            
            <assert
                test="cda:entry/cda:organizer[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.26' and @extension = '2016-12-01']]/cda:component/cda:observation[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.28' and @extension = '2016-12-01']]/cda:value[@code = 'S09.90']"
                >Cause of Death Value must be S09.90</assert>
        <!--
            <assert
                test="cda:entry/cda:organizer[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.26' and @extension = '2016-12-01']]/cda:component/cda:observation[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.27' and @extension = '2016-12-01']]/cda:entryRelationship/cda:observation/cda:code[@code = 'PHC1428']"
                >Cause of Death Part\\Line Number code must be PHC1428</assert>
            -->
            <assert
                test="cda:entry/cda:organizer[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.26' and @extension = '2016-12-01']]/cda:component/cda:observation[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.27' and @extension = '2016-12-01']]/cda:entryRelationship/cda:observation/cda:code[@code = 'PHC1427']"
                >Cause of Death Sequence Within Line code must be PHC1427</assert>

            <assert
                test="cda:entry/cda:organizer[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.26' and @extension = '2016-12-01']]/cda:component/cda:observation[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.27' and @extension = '2016-12-01']]/cda:value[@code = 'I10C']"
                >Cause of Death Value must be I10C</assert>
            
            <assert
                test="not(cda:entry/cda:organizer[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.26' and @extension = '2016-12-01']]/cda:component/cda:observation[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.27' and @extension = '2016-12-01']]//cda:entryRelationship/cda:act/cda:code[@code = 'PHC1423'])"
                >Cause of Death MUST NOT be an E-code</assert>
            
            <assert
                test="cda:entry/cda:organizer[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.26' and @extension = '2016-12-01']]/cda:component/cda:observation[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.27' and @extension = '2016-12-01']]/cda:value[@code = 'V890']"
                >Cause of Death Value must be V890</assert>
            
   
            <assert
                test="cda:entry/cda:organizer[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.26' and @extension = '2016-12-01']]/cda:component/cda:observation[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.27' and @extension = '2016-12-01']]/cda:value[@code = 'G409']"
                >Cause of Death Value must be G409</assert>
            
            <assert
                test="cda:entry/cda:organizer[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.26' and @extension = '2016-12-01']]/cda:component/cda:observation[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.27' and @extension = '2016-12-01']]/cda:value[@code = 'I64']"
                >Cause of Death Value must be I64</assert>
            
            <assert
                test="cda:entry/cda:organizer/cda:component/cda:observation[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.33' and @extension = '2016-12-01']]/cda:participant/cda:participantRole/cda:playingEntity/cda:code[@code='4']"
                >Location of death must be "4" (Street/Highway)</assert>
                               
            <!--
            <assert
                test="cda:entry/cda:observation[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.14' and @extension = '2016-12-01']]/cda:value[@code = '373067005']"
                >Tobacco Use must be 373067005</assert>
            -->
            <assert
                test="cda:entry/cda:organizer/cda:component/cda:observation[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3.41' and @extension = '2016-12-01']]/cda:value[@code = 'N']"
                >Death Result From Injury At Work must be 'N'</assert>
            
        </rule>
        
        
    </pattern>
    <!--
    <pattern id="DEATH-ADMIN" name="DEATH-ADMIN">
        <rule
            context="//cda:section[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.2.3' and @extension = '2016-12-01']]">
            <assert
                test="cda:entry/cda:procedure[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.2' and @extension = '2016-12-01']]/cda:entryRelationship/cda:observation[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.3' and @extension = '2016-12-01']]/cda:value[@value = 'true']"
                >Results available must be true</assert>
        </rule>
    </pattern>
    -->
    <pattern id="EXISTENCE-CHECKS" name="EXISTENCE-CHECKS">
        <rule context="/cda:ClinicalDocument">
<!--
            <assert
                test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime/@value"
                >Birth Time SHALL exist</assert>
                -->
            <assert
                test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/*[namespace-uri() = 'urn:hl7-org:sdtc' and local-name() = 'deceasedTime']/@value"
                >Death Time SHALL exist</assert>
            <!--
            <assert
                test=".//cda:act[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.4' and @extension = '2016-12-01']]/cda:id"
                >Coroner Medical Examiner Case Number SHALL exist</assert>
            <assert
                test=".//cda:act[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.7' and @extension = '2016-12-01']]/cda:performer/cda:assignedEntity/cda:addr"
                >Death certifier address SHALL exist</assert>
            <assert
                test=".//cda:act[cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.7' and @extension = '2016-12-01']]/cda:performer/cda:assignedEntity/cda:code"
                >Certifier type SHALL exist</assert>
            <assert test=".//cda:templateId[@root = '2.16.840.1.113883.10.20.26.1.5']">Referral Note
                / Coroner Referral SHALL exist</assert>
                -->
            <assert
                test="count(/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name/cda:given) > 1"
                >Patient Given names (first and second/middle) SHALL exist</assert>
            <assert
                test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name/cda:family"
                >Patient family name SHALL exist</assert>
        </rule>
    </pattern>
</schema>
