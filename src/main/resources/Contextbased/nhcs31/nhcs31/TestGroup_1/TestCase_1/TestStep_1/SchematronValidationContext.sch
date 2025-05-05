<?xml version="1.0" encoding="UTF-8"?>
<!--
NHCS v3.1 Emergency Department (ED) sample
xmlns:sch="http://www.ascc.net/xml/schematron"
xmlns:sch="http://purl.oclc.org/dsdl/schematron"

--> 
<sch:schema xmlns:sch="http://www.ascc.net/xml/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:ns prefix="cda" uri="urn:hl7-org:v3" />
    <sch:phase id="errors">
        <sch:active pattern="ED1"/>
    </sch:phase>
    <sch:pattern id="ED1" >
       
        <sch:rule context="/">
            
            <!-- Patient demographics -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget[1]/cda:patientRole[1]/cda:patient[1]/cda:name[1]/cda:given[1] = 'Lilly'">
                First name must be Lilly.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget[1]/cda:patientRole[1]/cda:patient[1]/cda:name[1]/cda:given[2] = 'Reagan'">
                Middle name must be Reagan.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget[1]/cda:patientRole[1]/cda:patient[1]/cda:name[1]/cda:family[1] = 'Pearce'">
                Family name must be Pearce.
            </sch:assert>
            <!-- Removed in 3.1
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr[@use = 'H']">
                Patient Home ('H') address must exist
            </sch:assert>
            -->
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:streetAddressLine[1] = '75755 Shopko Court'">
                Patient address Street Address Line must be 75755 Shopko Court.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:city = 'Washington'">
                Patient address City must be Washington.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:state = 'DC'">
                Patient address State must be DC.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:postalCode = '20078'">
                Patient address postalCode must be 20078
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:country = 'US'">
                Patient address Country must be US.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id[@root='2.16.840.1.113883.4.572' and @extension = '2DF6TH5NZ22']">
                Patient Medicare Beneficiary ID (MBI) must be 2DF6TH5NZ22. 
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id[@extension='830126492']">
                Patient medical record number must be 830126492. 
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id[@root='2.16.840.1.113883.4.1' and @extension = '772-89-6926']">
                Patient SSN must be 772-89-6926. 
            </sch:assert>
            <!-- Removing 5/11/2021
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:telecom[@use='MC' and @value = '6665554444']">
                Patient mobile contact must be 6665554444. 
            </sch:assert>
            -->
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime[@value = '19820309']">
                Patient birthdate must be 19820309
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode[@code = 'F']">
                Patient administrativeGenderCode must be F.
            </sch:assert>

            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.16'][cda:templateId/@extension='2022-01-01']/cda:entry/cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.34.3.45' and @extension='2022-06-01']]/cda:value[@code = '446141000124107']">
                Patient gender identity must be 446141000124107.
            </sch:assert>
           
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.16'][cda:templateId/@extension='2022-01-01']/cda:entry/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.200'][cda:templateId/@extension='2016-06-01']/cda:value[@code = 'F']">
                Patient birth sex must be F.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:raceCode/@code = '2106-3'">
                Patient race must be 2106-3.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:ethnicGroupCode/@code = '2186-5'">
                Patient ethnicity must be 2186-5.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:maritalStatusCode/@code = 'M'">
                Patient marital status must be M.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:languageCommunication/cda:languageCode/@code = 'sp'">
                Patient language must be sp.
            </sch:assert>

            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:languageCommunication/cda:proficiencyLevelCode/@code = 'E'">
                Patient language proficiency must be E.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:languageCommunication/cda:preferenceInd/@value = 'true'">
                Patient preferenceInd must be true.
            </sch:assert>     

            <!-- Author -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:code/@code = '208M00000X'">
                Document assigned author code must be 208M00000X.
            </sch:assert>     

            <sch:assert test="/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:assignedPerson/cda:name">
                Document must contain a vendor supplied assigned author, assigned person name.
            </sch:assert>     
            <!-- Removed 6/21/2021 -->
            <!--
            <sch:assert test="/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:assignedAuthoringDevice">
                Document must contain a vendor supplied assigned author, assigned authoring device.
            </sch:assert> 
            -->
            <!-- Legal authenticator -->
<!-- Removed 6/4/2021
            <sch:assert test="/cda:ClinicalDocument/cda:legalAuthenticator/cda:dateTime">
                Document must contain a vendor supplied legal authenticator date/time.
            </sch:assert> 

            <sch:assert test="/cda:ClinicalDocument/cda:legalAuthenticator/cda:signatureCode">
                Document must contain a vendor supplied legal authenticator signature code.
            </sch:assert> 
            -->
            <!-- Document header -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:templateId[@root='2.16.840.1.113883.10.20.34.1.4' and @extension='2022-01-01.3.1']">
                Document templateId must be root = 2.16.840.1.113883.10.20.34.1.4 and extension= 2022-01-01.3.1.
            </sch:assert> 
            <sch:assert test="/cda:ClinicalDocument/cda:code[@code='75619-7']">
                Document code must be 75619-7.
            </sch:assert> 
   
            <sch:assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:id[@extension = '3235467442']">
                Document NPI of physicians must be 3235467442.
            </sch:assert> 
   
            <sch:assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:code[@code='207P00000X']">
                Document types of care providers seen must include 207P00000X.
            </sch:assert> 

            <sch:assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:code[@code='163W00000X']">
                Document types of care providers seen must include 163W00000X.
            </sch:assert> 
            
            <sch:assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:functionCode[@code='104100000X']">
                Document types of care providers seen must include 104100000X.
            </sch:assert> 
            
            <sch:assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:time/cda:low">
                Document types of care providers time must be vendor supplied.
            </sch:assert> 
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:id[@extension='394857']">
                Document encompassing encounter ID / extension must be 394857 
            </sch:assert> 
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:code[@code='EMER']">
                Document encompassing encounter must be EMER. 
            </sch:assert> 
            
            <sch:assert test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:dischargeDispositionCode[@code='09']">
                Document dischargeDispositionCode must be 432661000124104. 
            </sch:assert> 
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.34.2.13' and @extension='2019-08-01']]/cda:entry/cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.20.34.3.40' and @extension='2019-08-01']]/cda:entryRelationship/cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.202' and @extension='2016-11-01']]/cda:text/cda:reference/@value">
                Clinicial notes text must exist. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.34.2.14' and @extension='2019-08-01']]/cda:text">
                A chief complaint and reason for visit section must exist with text.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:encounter/cda:entryRelationship/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.34.3.6'][cda:templateId/@extension='2019-08-01']/cda:value[@code='241749009']/cda:translation[@code='T40.2X1a']">
                Primary diagnosis must be 241749009 with a translation of T40.2X1a. 
            </sch:assert> 
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.5.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.3'][cda:templateId/@extension='2015-08-01']/cda:entryRelationship/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.4'][cda:templateId/@extension='2015-08-01']/cda:value[@code='269691005']">
                Active Problems must include 269691005.
            </sch:assert> 
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.5.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.3'][cda:templateId/@extension='2015-08-01']/cda:entryRelationship/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.4'][cda:templateId/@extension='2015-08-01']/cda:value[@code='134407002']">
                Active Problems must include 134407002.
            </sch:assert> 
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.5.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.3'][cda:templateId/@extension='2015-08-01']/cda:entryRelationship/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.4'][cda:templateId/@extension='2015-08-01']/cda:value[@code='6525002']">
                Active Problems must include 6525002.
            </sch:assert> 
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1'][cda:templateId/@extension='2015-08-01']/cda:code/@code='72479-9'">
                Lab Tests - Test Order Code must include 72479-9.
            </sch:assert> 
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1'][cda:templateId/@extension='2015-08-01']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2'][cda:templateId/@extension='2015-08-01']/cda:code[@code='51691-4']">
                Lab Tests - Test Code must include 51691-4.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1'][cda:templateId/@extension='2015-08-01']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2'][cda:templateId/@extension='2015-08-01']/cda:value[@value='8' and @unit='ng/mL']">
                Lab Test - Quantitative Result must be "8 ng/mL"
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1'][cda:templateId/@extension='2015-08-01']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2'][cda:templateId/@extension='2015-08-01']/cda:interpretationCode/@code='POS'">
                Lab Test - Qualitative Result must be "POS"
            </sch:assert>           
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1'][cda:templateId/@extension='2015-08-01']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2'][cda:templateId/@extension='2015-08-01']/cda:author">
                Lab Test must contain a vendor supplied author.
            </sch:assert>    
           
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1'][cda:templateId/@extension='2015-08-01']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2'][cda:templateId/@extension='2015-08-01']/cda:code/@code='50021-5'">
                Lab Tests - Test Code must include 50021-5.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1'][cda:templateId/@extension='2015-08-01']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2'][cda:templateId/@extension='2015-08-01']/cda:value[@value='3' and @unit='ng/mL']">
                Lab Test - Quantitative Result must be 3 ng/mL
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1'][cda:templateId/@extension='2015-08-01']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2'][cda:templateId/@extension='2015-08-01']/cda:interpretationCode/@code='POS'">
                Lab Test - Qualitative Result must be "POS"
            </sch:assert>           
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1'][cda:templateId/@extension='2015-08-01']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2'][cda:templateId/@extension='2015-08-01']/cda:author">
                Lab Test must contain a vendor supplied author.
            </sch:assert>    
            <!--
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='8302-2']/cda:value/[@value='72' and @unit='cm']">
                Vital Sign height must be 180 cm.
            </sch:assert>    
           -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='3141-9']/cda:value/@value='98'">
                Vital Sign weight must be 98 kg.
            </sch:assert>              
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='8310-5']/cda:value/@value='36.4'">
                Vital Sign temparature must be 36.4 C.
            </sch:assert>              
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='8480-6']/cda:value/@value='152'">
                Vital Sign Blood Pressure - Systolic must be 152 mm Hg.
            </sch:assert>        
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='9279-1']/cda:value/@value='20'">
                Vital Sign Respiratory rate per minute must be 20 bpm.
            </sch:assert>           
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='8867-4']/cda:value/@value='60'">
                Vital Sign heart rate must be 60 /m.
            </sch:assert>            
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='59408-5']/cda:value/@value='96'">
                Vital Sign pulse oximetry must be 96
            </sch:assert>  
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='3150-0']/cda:value/@value='97'">
                Vital Sign inhaled oxygen concentration must be 97
            </sch:assert>           
    
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code[@code='7242']">
                Medication must be 7242 RNorm.
            </sch:assert>  
    
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:routeCode[@code='C38276']">
                Medication route code must be C38276.
            </sch:assert>                
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:doseQuantity[@value='.5' and @unit='mg/hr']">
                Medication dose quantity must be .5 mg/hr.
            </sch:assert>    
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:approachSiteCode[@code='368208006']">
                Medication approach site code must be 368208006
            </sch:assert>             

            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:rateQuantity[@value='10' and @unit='ml/hr']">
                Medication rate quantity must be 10 ml/hr.
            </sch:assert>    

            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:low">
                Medication start time must be vendor supplied.
            </sch:assert>

            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:high">
                Medication end time must be vendor supplied.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.17'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.78'][cda:templateId/@extension='2014-06-09']/cda:value[@code='77176002']">
                Smoking status must be 77176002 SNOMED-CT.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code[@code='312938']">
                Discharge medication code MUST be 312938.
            </sch:assert>
        
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:routeCode[@code='C38288']">
                Discharge medication route MUST be C38288.
            </sch:assert>  
 
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:doseQuantity[@value='1' and @unit='tab']">
                Discharge medication dose quantity MUST be 1 tab.
            </sch:assert>  
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:low">
                Discharge medication Start Date must be vendor supplied.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:high">
                Discharge medication End Date must be vendor supplied.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.7.1'][cda:templateId/@extension='2014-06-09']/cda:entry/cda:procedure[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.14'][cda:templateId/@extension='2014-06-09']/cda:code[@code='10120']">
                Procedure code MUST be 10120.
            </sch:assert>
        
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.7.1'][cda:templateId/@extension='2014-06-09']/cda:entry/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.13'][cda:templateId/@extension='2014-06-09']/cda:effectiveTime">
                Procedure date of visit MUST be vendor supplied.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.7.1'][cda:templateId/@extension='2014-06-09']/cda:entry/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.13'][cda:templateId/@extension='2014-06-09']/cda:performer">
                Procedure performer MUST be vendor supplied.
            </sch:assert>

            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.7.1'][cda:templateId/@extension='2014-06-09']/cda:entry/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.13'][cda:templateId/@extension='2014-06-09']/cda:code[@code='71035']">
                Procedure observation code MUST be 71035.
            </sch:assert>

            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.7.1'][cda:templateId/@extension='2014-06-09']/cda:entry/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.13'][cda:templateId/@extension='2014-06-09']/cda:effectiveTime">
                Procedure observation effectiveTime MUST be vendor supplied.
            </sch:assert>    

            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.7.1'][cda:templateId/@extension='2014-06-09']/cda:entry/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.13'][cda:templateId/@extension='2014-06-09']/cda:value">
                Procedure observation value MUST be Normal.
            </sch:assert> 
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.7.1'][cda:templateId/@extension='2014-06-09']/cda:entry/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.13'][cda:templateId/@extension='2014-06-09']/cda:effectiveTime">
                Procedure observation performer MUST be vendor supplied.
            </sch:assert> 
             
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.7']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.52']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code[@code='113']">
                Immunization code MUST be 113.
            </sch:assert> 
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.7']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.120']/cda:effectiveTime">
                Immunization plan of treatment must contain an effectveTime when the immunization activity is intended to take place
            </sch:assert>
        </sch:rule>
        
    </sch:pattern>
    
</sch:schema>