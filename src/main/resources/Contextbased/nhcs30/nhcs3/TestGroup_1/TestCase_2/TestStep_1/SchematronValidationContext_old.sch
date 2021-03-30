<?xml version="1.0" encoding="UTF-8"?>
<!--

xmlns:sch="http://www.ascc.net/xml/schematron"
xmlns:sch="http://purl.oclc.org/dsdl/schematron"

--> 
<sch:schema xmlns:sch="http://www.ascc.net/xml/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:ns prefix="cda" uri="urn:hl7-org:v3" />
    <sch:ns prefix="sdtc" uri="urn:hl7-org:sdtc" />
    <sch:phase id="errors">
        <sch:active pattern="IP1"/>
    </sch:phase>
    <sch:pattern id="IP1" name="IP1">

        
        <sch:rule context="/">
            
            <!-- Patient demographics -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget[1]/cda:patientRole[1]/cda:patient[1]/cda:name[1]/cda:given[1] = 'Brigg'">
                First name must be Brigg.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget[1]/cda:patientRole[1]/cda:patient[1]/cda:name[1]/cda:given[2] = 'Halethorp'">
                Middle name must be Halethorp.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget[1]/cda:patientRole[1]/cda:patient[1]/cda:name[1]/cda:family[1] = 'Dishman'">
                Family name must be Dishman.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget[1]/cda:patientRole[1]/cda:patient[1]/cda:name[1]/cda:suffix[1] = 'Jr'">
                Patient Suffic name must be Jr.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr[@use = 'HP']">
                Patient Home ('HP') address must exist
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:streetAddressLine[1] = '9 Eliot Parkway'">
                Patient address Street Address Line must be 9 Eliot Parkway.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:city = 'Indianapolis'">
                Patient address City must be Indianapolis.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:state = 'IN'">
                Patient address State must be IN.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:postalCode = '46207'">
                Patient address postalCode must be 46207
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:country = 'US'">
                Patient address Country must be US.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id[@root='2.16.840.1.113883.4.572' and @extension = '2FG4TE5MK73']">
                Patient Medicare Beneficiary ID (MBI) must be 2FG4TE5MK73. 
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id[@root='831127453']">
                Patient medical record number must be 831127453. 
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id[@root='2.16.840.1.113883.4.1' and @extension = '772-89-6950']">
                Patient SSN must be 772-89-6950. 
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:telecom[@use='MC'] = '619-555-1469'">
                Patient mobile contact must be 619-555-1469. 
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime[@value = '19380322']">
                Patient birthdate must be 19380322
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode[@code = 'M']">
                Patient administrativeGenderCode must be M.
            </sch:assert>
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.5']/cda:entry/cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.34.3.45' and @extension='2019-04-01']]/cda:value[@code = '446151000124109']">
                Patient gender identity must be 446151000124109.
            </sch:assert>

            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:raceCode/@code = '2106-3'">
                Patient race must be 2106-3.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:ethnicGroupCode/@code = '2186-5'">
                Patient ethnicity must be 2186-5.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:maritalStatusCode/@code = 'S'">
                Patient marital status must be S.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:languageCommunication/cda:languageCode/@code = 'en'">
                Patient language must be en.
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
            
            <sch:assert test="/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:name">
                Document must contain a vendor supplied assigned author, assigned person name.
            </sch:assert>     
            <sch:assert test="/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:assignedAuthoringDevice">
                Document must contain a vendor supplied assigned author, assigned authoring device.
            </sch:assert> 
            
            <!-- Legal authenticator -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:legalAuthenticator/cda:dateTime">
                Document must contain a vendor supplied legal authenticator date/time.
            </sch:assert> 
            
            <sch:assert test="/cda:ClinicalDocument/cda:legalAuthenticator/cda:signatureCode">
                Document must contain a vendor supplied legal authenticator signature code.
            </sch:assert>
            
            
            
            <!-- Document header -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:templateId[@root='2.16.840.1.113883.10.20.34.1.1' and @extension='2019-08-01']">
                Document templateId must be root = 2.16.840.1.113883.10.20.34.1.1 and extension= 2019-08-01.
            </sch:assert> 
            <sch:assert test="/cda:ClinicalDocument/cda:code[@code='75619-7']">
                Document code must be 75619-7.
            </sch:assert> 
            
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:id[@extension = '2223334444']">
                Document NPI of physicians must be 2223334444.
            </sch:assert> 
            
            <sch:assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:code[@code='208M00000X']">
                Document types of care providers seen must include 208M00000X.
            </sch:assert> 
            <sch:assert test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:id[@extension='3829921793147']">
                Encounter number must be 3829921793147.
            </sch:assert> 
            <sch:assert test="/cda:ClinicalDocument/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.12'][@extension='2019-08-01']/cda:encounter[cda:templateId/@root='2.16.840.1.113883.10.20.34.3.39'][@extension='2019-08-01']/cda:entryRelationship/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.202'][@extension='2016-11-01']/cda:reference/cda:text/@value">
                History and Physical Note shall be supplied.
            </sch:assert>           
            
            <sch:assert test="/cda:ClinicalDocument/cda:structuredBody/cda:component/cda:section[@root='2.16.840.1.113883.10.20.34.2.4']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.129']/cda:entryRelationship/cda:act/cda:code[@code='1']">
                Expected source(s) of payment code MUST be 1.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:dischargeDispositionCode[@code='3']">
                Document dischargeDispositionCode must be 3. 
            </sch:assert> 
            
            <sch:assert test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:code[@code='IMP']">
                Encompassing encounter code must be IMP. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:section/cda:entryRelationship/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.34.3.6'][cda:templateId/@extension='2019-08-01']/cda:value[@value='A41.50']">
                Primary diagnosis must be A41.50. 
            </sch:assert> 
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:section/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.152'][cda:templateId/@extension='2019-08-01']/cda:value[@value='J10.00']">
                Priniciple diagnosis must be J10.00. 
            </sch:assert>         
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.5.1' and @extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.3' and @extension='2015-08-01']/cda:entryRelationship/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.4' and @extension='2015-08-01']/cda:value[@value = '49049000']">
                Active Problems must include 49049000.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.5.1' and @extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.3' and @extension='2015-08-01']/cda:entryRelationship/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.4' and @extension='2015-08-01']/cda:code[@code = '64572001']">
                Active Problems type must include 64572001.
            </sch:assert>      
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.5.1' and @extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.3' and @extension='2015-08-01']/cda:entryRelationship/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.4' and @extension='2015-08-01']/cda:value[@value = 'E11.9 ']">
                Active Problems must include E11.9 .
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.5.1' and @extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.3' and @extension='2015-08-01']/cda:entryRelationship/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.4' and @extension='2015-08-01']/cda:value[@value = 'I25.10']">
                Active Problems must include I25.10.
            </sch:assert>
            
            
            <!-- Medication -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code[@code='313002']">
                Medication must be 313002.
            </sch:assert>  
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:routeCode[@code='C38276']">
                Medication route code must be C38276.
            </sch:assert>                
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:doseQuantity[@value='1']">
                Medication dose quantity must be 1.
            </sch:assert>    
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:approachSiteCode[@code='64262003']">
                Medication approach site code must be 64262003
            </sch:assert>             
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:rateQuantity[@value='5' and @unit='ml/hr']">
                Medication rate quantity must be 5 ml/hr.
            </sch:assert>    
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:low">
                Medication start time must be vendor supplied.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:high">
                Medication end time must be vendor supplied.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code[@code='445667070301']">
                Medication must be 445667070301.
            </sch:assert>  
                      
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:doseQuantity[@value='1' and @unit='g']">
                Medication dose quantity must be 1g.
            </sch:assert>    
      
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:low">
                Medication start time must be vendor supplied.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:high">
                Medication end time must be vendor supplied.
            </sch:assert>
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code[@code='445667070301']">
                Medication must be 445667070301.
            </sch:assert>  
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:doseQuantity[@value='1' and @unit='g']">
                Medication dose quantity must be 1g.
            </sch:assert>    
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:low">
                Medication start time must be vendor supplied.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:high">
                Medication end time must be vendor supplied.
            </sch:assert>
            
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code[@code='445667070301']">
                Medication must be 445667070301.
            </sch:assert>  
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:doseQuantity[@value='1' and @unit='g']">
                Medication dose quantity must be 1g.
            </sch:assert>    
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:low">
                Medication start time must be vendor supplied.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:high">
                Medication end time must be vendor supplied.
            </sch:assert>
            
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code[@code='74169']">
                Medication must be 74169.
            </sch:assert>  
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:doseQuantity[@value='4.5' and @unit='g']">
                Medication dose quantity must be 4.5g.
            </sch:assert>    
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:low">
                Medication start time must be vendor supplied.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:high">
                Medication end time must be vendor supplied.
            </sch:assert>
            
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code[@code='1115700']">
                Medication must be 1115700.
            </sch:assert>  
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:doseQuantity[@value='75' and @unit='mg']">
                Medication dose quantity must be 75mg.
            </sch:assert>    
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:low">
                Medication start time must be vendor supplied.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entry/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:high">
                Medication end time must be vendor supplied.
            </sch:assert>
            
            <!-- Discharge medications -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code[@code='724606']">
                Discharge Medication must contain 724606
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:routeCode[@code='C38288']">
                Discharge Medication route code must be C38288
            </sch:assert>         
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:doseQuantity[@value='1']">
                Discharge Medication dose quantity must be 1.
            </sch:assert>        
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:period[@value='1' and @unit='d']">
                Discharge Medication period (frequency) must be 1 day.
            </sch:assert>    
          
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:low">
                Discharge Medication start date must be vendor supplied.
            </sch:assert>    
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:high">
                Discharge Medication end date must be vendor supplied.
            </sch:assert>    
          
          
          
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code[@code='861007']">
                Discharge Medication must contain 861007
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:routeCode[@code='C38288']">
                Discharge Medication route code must be C38288
            </sch:assert>         
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:doseQuantity[@value='1' and @unit='tab']">
                Discharge Medication dose quantity must be 1 tab.
            </sch:assert>        
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:period[@value='1' and @unit='d']">
                Discharge Medication period (frequency) must be 1 day.
            </sch:assert>    
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:low">
                Discharge Medication start date must be vendor supplied.
            </sch:assert>    
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:high">
                Discharge Medication end date must be vendor supplied.
            </sch:assert>    
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code[@code='724444']">
                Discharge Medication must contain 724444
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:routeCode[@code='C38288']">
                Discharge Medication route code must be C38288
            </sch:assert>         
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:doseQuantity[@value='1' and @unit='tab']">
                Discharge Medication dose quantity must be 1 tab.
            </sch:assert>        
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:period[@value='1' and @unit='d']">
                Discharge Medication period (frequency) must be 1 day.
            </sch:assert>    
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:low">
                Discharge Medication start date must be vendor supplied.
            </sch:assert>    
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.11.1'][cda:templateId/@extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.35'][cda:templateId/@extension='2016-03-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:effectiveTime/cda:high">
                Discharge Medication end date must be vendor supplied.
            </sch:assert> 
          
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.7.1'][cda:templateId/@extension='2014-06-09']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.13'][cda:templateId/@extension='2014-06-09']/cda:code[@code='399208008']">
                Procedure activity must be 399208008.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.7.1'][cda:templateId/@extension='2014-06-09']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.13'][cda:templateId/@extension='2014-06-09']/cda:effectiveTime">
                Procedure activity datetime must be vendor supplied.
            </sch:assert> 
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.7.1"][cda:templateId/@extension="2014-06-09"]/cda:entry/cda:act[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.12"][cda:templateId/@extension="2014-06-09"]//cda:entryRelationship[@typeCode="RSON"]/cda:observation[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.19"][cda:templateId/@extension="2014-06-09"]/cda:value[@value="49727002"]'>
                Procedure activity indication must be 49727002.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.7.1'][cda:templateId/@extension='2014-06-09']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.13'][cda:templateId/@extension='2014-06-09']/cda:value[@value='367542003']">
                Procedure activity finding must be 367542003.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.7.1'][cda:templateId/@extension='2014-06-09']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.13'][cda:templateId/@extension='2014-06-09']/cda:performer">
                Procedure activity performer must be vendor supplied.
            </sch:assert>
            
            <!-- Lab Tests -->
            
            
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="76091-8"]'>
                Lab Tests and results must contain Test Order Code 76091-8.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:value[@value="76078-5"]'>
                Lab Tests and results must contain Qualitative Result code 76078-5.
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:interpretationCode[@value="POS"]'>
                Lab Tests and results must contain Intepretation Code POS.
            </sch:assert>  
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:author'>
                Lab Tests and results must contain vendor supplied author.
            </sch:assert>  
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:referenceRange/cda:observationRange/cda:value'>
                Lab Tests and results must contain reference range.
            </sch:assert>
            
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="600-7"]'>
                Lab Tests and results must contain Test Order Code 600-7.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:value[@value="92769-9"]'>
                Lab Tests and results must contain Qualitative Result code 92769-9.
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:interpretationCode[@value="POS"]'>
                Lab Tests and results must contain Intepretation Code POS.
            </sch:assert>  
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:author'>
                Lab Tests and results must contain vendor supplied author.
            </sch:assert>  
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:referenceRange/cda:observationRange/cda:value'>
                Lab Tests and results must contain reference range.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="24321-2"]'>
                Lab Tests and results must contain Test Order Code 24321-2.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:value[@value="304" and @unit="mg/dl"]'>
                Lab Tests and results must contain Qualitative Result  304 mg/dl.
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:interpretationCode[@value="HX"]'>
                Lab Tests and results must contain Intepretation Code HX.
            </sch:assert>  
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:author'>
                Lab Tests and results must contain vendor supplied author.
            </sch:assert>  
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:referenceRange/cda:observationRange/cda:value'>
                Lab Tests and results must contain reference range.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="3094-0"]'>
                Lab Tests and results must contain Test Order Code 3094-0.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:value[@value="20" and @unit="mg/dl"]'>
                Lab Tests and results must contain Qualitative Result 20 mg/dl.
            </sch:assert>

            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:author'>
                Lab Tests and results must contain vendor supplied author.
            </sch:assert>  
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:referenceRange/cda:observationRange/cda:value'>
                Lab Tests and results must contain reference range.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="2160-0"]'>
                Lab Tests and results must contain Test Order Code 2160-0.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:value[@value="1.9" and @unit="mg/dl"]'>
                Lab Tests and results must contain Qualitative Result 1.9 mg/dl.
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:interpretationCode[@value="HX"]'>
                Lab Tests and results must contain Intepretation Code HX.
            </sch:assert>  
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:author'>
                Lab Tests and results must contain vendor supplied author.
            </sch:assert>  
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:referenceRange/cda:observationRange/cda:value'>
                Lab Tests and results must contain reference range.
            </sch:assert>
            
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="2951-2"]'>
                Lab Tests and results must contain Test Order Code 2951-2.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:value[@value="146" and @unit="mmol/L"]'>
                Lab Tests and results must contain Qualitative Result 146 mmol/L.
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:interpretationCode[@value="HX"]'>
                Lab Tests and results must contain Intepretation Code HX.
            </sch:assert>  
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:author'>
                Lab Tests and results must contain vendor supplied author.
            </sch:assert>  
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:referenceRange/cda:observationRange/cda:value'>
                Lab Tests and results must contain reference range.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="2823-3"]'>
                Lab Tests and results must contain Test Order Code 2823-3.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:value[@value="3.5" and @unit="mmol/L"]'>
                Lab Tests and results must contain Qualitative Result 3.5 mmol/L.
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:interpretationCode[@value="HX"]'>
                Lab Tests and results must contain Intepretation Code HX.
            </sch:assert>  
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:author'>
                Lab Tests and results must contain vendor supplied author.
            </sch:assert>  
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:referenceRange/cda:observationRange/cda:value'>
                Lab Tests and results must contain reference range.
            </sch:assert>
            
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="2075-0"]'>
                Lab Tests and results must contain Test Order Code 2075-0.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:value[@value="2.5" and @unit="mmol/L"]'>
                Lab Tests and results must contain Qualitative Result 2.5 mmol/L.
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:interpretationCode[@value="HX"]'>
                Lab Tests and results must contain Intepretation Code HX.
            </sch:assert>  
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:author'>
                Lab Tests and results must contain vendor supplied author.
            </sch:assert>  
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:referenceRange/cda:observationRange/cda:value'>
                Lab Tests and results must contain reference range.
            </sch:assert>
            
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="2028-9"]'>
                Lab Tests and results must contain Test Order Code 2028-9.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:value[@value="32" and @unit="mmol/L"]'>
                Lab Tests and results must contain Qualitative Result 32 mmol/L.
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:interpretationCode[@value="HX"]'>
                Lab Tests and results must contain Intepretation Code HX.
            </sch:assert>  
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:author'>
                Lab Tests and results must contain vendor supplied author.
            </sch:assert>  
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:referenceRange/cda:observationRange/cda:value'>
                Lab Tests and results must contain reference range.
            </sch:assert>
            
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="17861-6"]'>
                Lab Tests and results must contain Test Order Code 17861-6.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:value[@value="9" and @unit="mg/dl"]'>
                Lab Tests and results must contain Qualitative Result 9 mg/dl.
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:interpretationCode[@value="N"]'>
                Lab Tests and results must contain Intepretation Code N.
            </sch:assert>  
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:author'>
                Lab Tests and results must contain vendor supplied author.
            </sch:assert>  
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:referenceRange/cda:observationRange/cda:value'>
                Lab Tests and results must contain reference range.
            </sch:assert>
            
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="88294-4"]'>
                Lab Tests and results must contain Test Order Code 88294-4.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:value[@value="9" and @unit="mg/dl"]'>
                Lab Tests and results must contain Qualitative Result 9 mg/dl.
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:interpretationCode[@value="LX"]'>
                Lab Tests and results must contain Intepretation Code LX.
            </sch:assert>  
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:author'>
                Lab Tests and results must contain vendor supplied author.
            </sch:assert>  
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:referenceRange/cda:observationRange/cda:value'>
                Lab Tests and results must contain reference range.
            </sch:assert>
            
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="57021-8"]'>
                Lab Tests and results must contain Test Order Code 57021-8.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.2"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="6690-2"]'>
                Lab Tests and results must contain Result code 6690-2
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:interpretationCode[@value="LX"]'>
                Lab Tests and results must contain Intepretation Code LX.
            </sch:assert>  
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:author'>
                Lab Tests and results must contain vendor supplied author.
            </sch:assert>  
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:referenceRange/cda:observationRange/cda:value'>
                Lab Tests and results must contain reference range.
            </sch:assert>
            
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="789-8"]'>
                Lab Tests and results must contain Test Order Code 789-8.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.2"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="6690-2"]'>
                Lab Tests and results must contain Result code 6690-2
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:interpretationCode[@value="N"]'>
                Lab Tests and results must contain Intepretation Code N.
            </sch:assert>  
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:author'>
                Lab Tests and results must contain vendor supplied author.
            </sch:assert>  
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:referenceRange/cda:observationRange/cda:value'>
                Lab Tests and results must contain reference range.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="718-7"]'>
                Lab Tests and results must contain Test Order Code 718-7.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.2"][cda:templateId/@extension="2015-08-01"]/cda:value[@value="13.9" and @unit="g/dL"]'>
                Lab Tests and results must contain Result 13.9 g/dL
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:interpretationCode[@value="N"]'>
                Lab Tests and results must contain Intepretation Code N.
            </sch:assert>  
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:author'>
                Lab Tests and results must contain vendor supplied author.
            </sch:assert>  
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:referenceRange/cda:observationRange/cda:value'>
                Lab Tests and results must contain reference range.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="4544-3"]'>
                Lab Tests and results must contain Test Order Code 4544-3.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.2"][cda:templateId/@extension="2015-08-01"]/cda:value[@value="40.1" and @unit="%"]'>
                Lab Tests and results must contain Result 40.1%
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:interpretationCode[@value="N"]'>
                Lab Tests and results must contain Intepretation Code N.
            </sch:assert>  
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:author'>
                Lab Tests and results must contain vendor supplied author.
            </sch:assert>  
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:referenceRange/cda:observationRange/cda:value'>
                Lab Tests and results must contain reference range.
            </sch:assert>  
            
            
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="4544-3"]'>
                Lab Tests and results must contain Test Order Code 4544-3.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.2"][cda:templateId/@extension="2015-08-01"]/cda:value[@value="40.1" and @unit="%"]'>
                Lab Tests and results must contain Result 40.1%
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:interpretationCode[@value="N"]'>
                Lab Tests and results must contain Intepretation Code N.
            </sch:assert>  
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:author'>
                Lab Tests and results must contain vendor supplied author.
            </sch:assert>  
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:referenceRange/cda:observationRange/cda:value'>
                Lab Tests and results must contain reference range.
            </sch:assert>  
            
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:code[@code="777-3"]'>
                Lab Tests and results must contain Test Order Code 777-3.
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.2"][cda:templateId/@extension="2015-08-01"]/cda:value[@value="40.1" and @unit="%"]'>
                Lab Tests and results must contain Result 40.1%
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:interpretationCode[@value="N"]'>
                Lab Tests and results must contain Intepretation Code N.
            </sch:assert>  
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:author'>
                Lab Tests and results must contain vendor supplied author.
            </sch:assert>  
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.3"][cda:templateId/@extension="2015-08-01"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.1"][cda:templateId/@extension="2015-08-01"]/cda:referenceRange/cda:observationRange/cda:value'>
                Lab Tests and results must contain reference range.
            </sch:assert>  
            
            <!-- Vital Signs -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='9279-1']/cda:value/@value='22'">
                Vital Sign Respiratory rate per minute must be 22 bpm.
            </sch:assert>           
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='8867-4']/cda:value/@value='89'">
                Vital Sign heart rate must be 89 /m.
            </sch:assert>            
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='59408-5']/cda:value/@value='91'">
                Vital Sign pulse oximetry must be 91
            </sch:assert>  
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='3150-0']/cda:value/@value='21'">
                Vital Sign inhaled oxygen concentration must be 21
            </sch:assert>           
            
            <!-- Patient implantable device -->
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.23"][cda:templateId/@extension="2014-06-09"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.135"]/cda:supply[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.50"][cda:templateId/@extension="2014-06-09"]/cda:participantRole[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.37"]/cda:playingDevice/cda:code[@code="00643169634589"]'>
                Device Distinct Identification Code MUST be 00643169634589 
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.23"][cda:templateId/@extension="2014-06-09"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.135"]/cda:supply[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.50"][cda:templateId/@extension="2014-06-09"]/cda:effectiveTime/cda:high[@value="20220816"]'>
                Device expiration date MUST be 20220816
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.23"][cda:templateId/@extension="2014-06-09"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.135"]/cda:supply[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.50"][cda:templateId/@extension="2014-06-09"]/cda:participantRole[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.37"]/cda:playingDevice/cda:id[@extension="00643169634589"]'>
                Device identifier MUST be 00643169634589
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.23"][cda:templateId/@extension="2014-06-09"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.135"]/cda:supply[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.50"][cda:templateId/@extension="2014-06-09"]/cda:participantRole[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.37"]/cda:observation[cda:templateid/ @root="2.16.840.1.113883.10.20.22.4.302"]/cda:reference[@value="C1785"]'>
                Device catalog number MUST be C1785
            </sch:assert>
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.23"][cda:templateId/@extension="2014-06-09"]/cda:organizer[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.135"]/cda:supply[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.50"][cda:templateId/@extension="2014-06-09"]/cda:participantRole[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.37"]/cda:observation[cda:templateid/@root="2.16.840.1.113883.10.20.22.4.316"]/cda:value[@value="20191015"]'>
                Device manufactoring date MUST be 20191015
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.22.2.23"][cda:templateId/@extension="2014-06-09"]/cda:organizer[cda:templateId/@root=":2.16.840.1.113883.10.20.22.4.135"]/cda:supply[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.50"][cda:templateId/@extension="2014-06-09"]/cda:statusCode[@code="active"]'>
                Implantable device status MUST be active
            </sch:assert>
            
            <!-- Immunizations -->
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.34.2.7"]/cda:substanceAdministration[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.120"]/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code[@code="135"]'>
                Immunization code MUST be 135
            </sch:assert>
            
            <sch:assert test='/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root="2.16.840.1.113883.10.20.34.2.7"]/cda:substanceAdministration[cda:templateId/@root="2.16.840.1.113883.10.20.22.4.120"]/cda:effectiveTime[@value="20201115"]'>
                Immunization administered date MUST be 20201115
                
            </sch:assert>
            
        </sch:rule>
    </sch:pattern>
</sch:schema>
