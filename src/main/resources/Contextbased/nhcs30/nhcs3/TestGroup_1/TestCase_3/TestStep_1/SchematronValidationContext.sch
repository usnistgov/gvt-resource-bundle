<?xml version="1.0" encoding="UTF-8"?>
<!--

xmlns:sch="http://www.ascc.net/xml/schematron"
xmlns:sch="http://purl.oclc.org/dsdl/schematron"

-->
<sch:schema xmlns:sch="http://www.ascc.net/xml/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:ns prefix="cda" uri="urn:hl7-org:v3" />
    <sch:ns prefix="sdtc" uri="urn:hl7-org:sdtc" />
    
    <sch:pattern>
        
        <sch:rule context="/">
            
            <!-- Patient demographics -->
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget[1]/cda:patientRole[1]/cda:patient[1]/cda:name[1]/cda:given[1] = 'Fleming'">
                First name must be Fleming.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget[1]/cda:patientRole[1]/cda:patient[1]/cda:name[1]/cda:given[2] = 'Nilson'">
                Middle name must be Nilson.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget[1]/cda:patientRole[1]/cda:patient[1]/cda:name[1]/cda:family[1] = 'Pearce'">
                Family name must be Strathman.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget[1]/cda:patientRole[1]/cda:patient[1]/cda:name[1]/cda:suffix = 'Sr'">
                Family name suffix must be Sr.
            </sch:assert>         
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr[@use = 'H']">
                Patient Home ('H') address must exist
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:streetAddressLine[1] = '0378 Maywood Point'">
                Patient address Street Address Line must be 0378 Maywood Point.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:city = 'Independence'">
                Patient address City must be Independence.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:state = 'MO'">
                Patient address State must be MO.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:postalCode = '64054'">
                Patient address postalCode must be 20078
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:country = 'US'">
                Patient address Country must be US.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id[@root='2.16.840.1.113883.4.572' and @extension = '1EG4TE5MK73 ']">
                Patient Medicare Beneficiary ID (MBI) must be 1EG4TE5MK73 . 
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id[@root='MR-111-1111']">
                Patient medical record number must be MR-111-1111. 
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id[@root='2.16.840.1.113883.4.1' and @extension = '772-89-6926']">
                Patient SSN must be 772-89-6926. 
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:telecom[@use='MC'] = '444-555-2221'">
                Patient mobile contact must be 444-555-2221. 
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime = '06011937'">
                Patient birthdate must be 06011937
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode = 'F'">
                Patient administrativeGenderCode must be F.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode = 'F'">
                Patient administrativeGenderCode must be F.
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[@root='2.16.840.1.113883.10.20.34.2.5']/cda:entry/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.34.3.45'][cda:templateId/@extension='2019-04-01']/cda:value = '446151000124109'">
                Patient gender identity must be 446151000124109.
            </sch:assert>

            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:raceCode/@code = '2106-3'">
                Patient race must be 2106-3.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/sdtc:raceCode/@code = '2058-6'">
                Patient race additional detail must be 2058-6.
            </sch:assert>        
            <sch:assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:ethnicGroupCode/@code = '2135-2'">
                Patient ethnicity must be 2135-2.
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
            <sch:assert test="/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:code[@code='208M00000X']">
                Document author role code must be 208M00000X.
            </sch:assert>   
  
            <sch:assert test="/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:assignedPerson/cda:name">
                Document author assigned person name must be vendor supplied.
            </sch:assert>
  
            <sch:assert test="/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:assignedPerson/cda:name">
                Document author assigned person name must be vendor supplied.
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:assignedPerson/cda:assignedAuthoringDevice">
                Document author assigned authoring device must be vendor supplied.
            </sch:assert>         
            
            <sch:assert test="/cda:ClinicalDocument/cda:legalAuthenticator/cda:dateTime">
                Document legal authenticator dateTime must be vendor supplied.
            </sch:assert>             
            

            <sch:assert test="/cda:ClinicalDocument/cda:legalAuthenticator/cda:signatureCode">
                Document legal authenticator signatureCode must be vendor supplied.
            </sch:assert>   
            <sch:assert test="/cda:ClinicalDocument/cda:templateId[@root='2.16.840.1.113883.10.20.34.1.1:2019-08-01']">
                Document template ID must be 2.16.840.1.113883.10.20.34.1.1:2019-08-01.
            </sch:assert>  
           
            <sch:assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:id[@extension = '9874563214']">
                Document NPI of physicians must be 9874563214.
            </sch:assert> 
            
            <sch:assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:code[@code = '2279G0305X']">
                Type of care provider must be 2279G0305X.
            </sch:assert>         
           
            <sch:assert test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:id[@root='578963']">
                Encompassing encounter number must be 578963.
            </sch:assert>
           
            <sch:assert test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:code[@code='AMB']">
                Encompassing encounter code must be AMB.
            </sch:assert>       
           
            <sch:assert test="/cda:ClinicalDocument/cda:structuredBody/cda:component/cda:section[@root='2.16.840.1.113883.10.20.34.2.4']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.129']/cda:entryRelationship/cda:act/cda:code[@code='1']">
                Expected source(s) of payment code MUST be 1.
            </sch:assert>
           

            <sch:assert test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:dischargeDispositionCode[@code='01']">
                Discharge disposition code MUST be 01.
            </sch:assert>
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.8' and @extension='2019-08-01']/cda:encounter[cda:templateId/@root='2.16.840.1.113883.10.20.34.3.10' and @extension='2019-08-01']/cda:entryRelationship/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.202' and @extension='2016-11-01']/cda:reference/cda:text/@value">
                Clinician Notes MUST be vendor supplied.
            </sch:assert>  
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:section/cda:entry/cda:encounter[cda:templateId/@root='2.16.840.1.113883.10.20.34.3.39' and @extension='2019-08-01']/cda:entryRelationship/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.34.3.6' and  @extension='2019-08-01']/cda:value[@value = '38341003']">
                Primary diagnosis must be 38341003.
            </sch:assert>           
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.5.1' and @extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.3' and @extension='2015-08-01']/cda:entryRelationship/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.4' and @extension='2015-08-01']/cda:value[@value = '424736006']">
                Active Problems must include 424736006.
            </sch:assert>           
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.5.1' and @extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.3' and @extension='2015-08-01']/cda:entryRelationship/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.4' and @extension='2015-08-01']/cda:value[@value = '48447003']">
                Active Problems must include 48447003.
            </sch:assert>       
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.5.1' and @extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.3' and @extension='2015-08-01']/cda:entryRelationship/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.4' and @extension='2015-08-01']/cda:value[@value = 'E78.5']">
                Active Problems must include E78.5.
            </sch:assert> 
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.5.1' and @extension='2015-08-01']/cda:entry/cda:act[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.3' and @extension='2015-08-01']/cda:entryRelationship/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.4' and @extension='2015-08-01']/cda:value[@value = '751000119104']">
                Active Problems must include 751000119104.
            </sch:assert>           
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:code[@code = '51990-0']">
                Lab Order Test Order Code MUST contain 51990-0.
            </sch:assert>         
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:code[@code = '58410-2']">
                Lab Order Test Order Code MUST contain 58410-2.
            </sch:assert>         
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:code[@code = '55231-5']">
                Lab Order Test Order Code MUST contain 55231-5.
            </sch:assert>   
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:code[@code = '718-7']">
                Lab Order Test Order Code MUST contain 718-7.
            </sch:assert>   
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:value[@value = '12']">
                Lab Test - Quantitative Result Hemoglobin MUST be 12.0 g/dL
            </sch:assert>

            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:interpretationCode[@code = 'N']">
                Lab Test - Interpretation Code Hemoglobin MUST be N. 
            </sch:assert>

            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:author">
                Lab Test - Interpretation Author MUST be vendor supplied. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:low[@value='12']">
                Lab Test - Interpretation Hemoglobin reference range must be 12.0 - 15.5 g/dL. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:high[@value='15.5']">
                Lab Test - Interpretation Hemoglobin reference range must be 12.0 - 15.5 g/dL. 
            </sch:assert>
            
            <!-- Hematocrit Auto -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:code[@code = '4544-3']">
                Lab Order Test Order Code MUST contain 4544-3.
            </sch:assert>   
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:value[@value = '39%']">
                Lab Test - Quantitative Result Hematocrit Auto MUST be 39%
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:interpretationCode[@code = 'N']">
                Lab Test - Interpretation Code Hematocrit Auto MUST be N. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:author">
                Lab Test - Interpretation Author MUST be vendor supplied. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:low[@value='35.5']">
                Lab Test - Interpretation Hematocrit Auto reference range must be 35.5-44.9 percent. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:high[@value='44.9']">
                Lab Test - Interpretation Hematocrit Auto reference range must be 35.5-44.9 percent. 
            </sch:assert>
            
            
            <!-- MCV -->
            
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:code[@code = '787-2']">
                Lab Order Test Order Code MUST contain 787-2.
            </sch:assert>   
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:value[@value = '85' and @units='fL']">
                Lab Test - Quantitative Result MCV MUST be 85 fL
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:interpretationCode[@code = 'N']">
                Lab Test - Interpretation Code MCV MUST be N. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:author">
                Lab Test - Interpretation Author MUST be vendor supplied. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:low[@value='80' and @units='fL']">
                Lab Test - Interpretation MCV reference range must be 80-95 fL. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:high[@value='95' and @units='fL']">
                Lab Test - Interpretation MCV reference range must be 80-95 fL. 
            </sch:assert>
            
            <!-- Mean Corpuscular hemoglobin -->
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:code[@code = 'MCHC']">
                Lab Order Test Order Code MUST contain MCHC.
            </sch:assert>   
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:value[@value = '31' and @units='pg']">
                Lab Test - Quantitative Result Mean Corpuscular hemoglobin MUST be 31 pg
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:interpretationCode[@code = 'N']">
                Lab Test - Interpretation Code Mean Corpuscular hemoglobin MUST be N. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:author">
                Lab Test - Interpretation Author MUST be vendor supplied. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:low[@value='27.5' and @units='pg']">
                Lab Test - Interpretation Mean Corpuscular hemoglobin reference range must be 27.5 to 33.2 pg. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:high[@value='33.2' and @units='pg']">
                Lab Test - Interpretation Mean Corpuscular hemoglobin reference range must be 27.5 to 33.2 pg. 
            </sch:assert>
            
            <!-- Platelets -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:code[@code = '777-3']">
                Lab Order Test Order Code MUST contain 777-3.
            </sch:assert>   
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:value[@value = '250000' and @units='mcL']">
                Lab Test - Quantitative Result Platelets MUST be 250,000 mcL
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:interpretationCode[@code = 'N']">
                Lab Test - Interpretation Code Platelets MUST be N. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:author">
                Lab Test - Interpretation Author MUST be vendor supplied. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:low[@value='157000' and @units='mcL']">
                Lab Test - Interpretation Platelets reference range must be 157,000-371,000/mcL. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:high[@value='371000' and @units='mcL']">
                Lab Test - Interpretation Platelets reference range must be 157,000-371,000/mcL. 
            </sch:assert>
            
            <!-- Sodium -->
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:code[@code = '2947-0']">
                Lab Order Test Order Code MUST contain 2947-0.
            </sch:assert>   
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:value[@value = '134' and @units='mmol/L']">
                Lab Test - Quantitative Result Sodium MUST be 134 mmol/L 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:interpretationCode[@code = 'LX']">
                Lab Test - Interpretation Code Sodium MUST be LX. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:author">
                Lab Test - Interpretation Author MUST be vendor supplied. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:low[@value='136' and @units='mmol/L']">
                Lab Test - Interpretation Sodium reference range must be 136 to 144 mmol/L . 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:high[@value='144' and @units='mmol/L']">
                Lab Test - Interpretation Sodium reference range must be 136 to 144 mmol/L . 
            </sch:assert>
            
            <!-- Potassium -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:code[@code = '6298-4']">
                Lab Order Test Order Code MUST contain 6298-4.
            </sch:assert>   
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:value[@value = '4.1' and @units='mmol/L']">
                Lab Test - Quantitative Result Potassium MUST be 4.1 mmol/L 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:interpretationCode[@code = 'N']">
                Lab Test - Interpretation Code Potassium MUST be N. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:author">
                Lab Test - Interpretation Author MUST be vendor supplied. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:low[@value='3.7' and @units='mmol/L']">
                Lab Test - Interpretation Potassium reference range must be 3.7 to 5.2 mmol/L. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:high[@value='5.2' and @units='mmol/L']">
                Lab Test - Interpretation Potassium reference range must be 3.7 to 5.2 mmol/L. 
            </sch:assert>
            
            <!-- Chloride -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:code[@code = '2069-3']">
                Lab Order Test Order Code MUST contain 2069-3.
            </sch:assert>   
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:value[@value = '103' and @units='mmol/L']">
                Lab Test - Quantitative Result Chloride MUST be 103 mmol/L 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:interpretationCode[@code = 'N']">
                Lab Test - Interpretation Code Chloride MUST be N. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:author">
                Lab Test - Interpretation Author MUST be vendor supplied. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:low[@value='96' and @units='mmol/L']">
                Lab Test - Interpretation Chloride reference range must be 96 to 106 mmol/L. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:high[@value='106' and @units='mmol/L']">
                Lab Test - Interpretation Chloride reference range must be 96 to 106 mmol/L. 
            </sch:assert>
            
            
            <!-- Carbon dioxide -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:code[@code = '20565-8']">
                Lab Order Test Order Code MUST contain 20565-8.
            </sch:assert>   
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:value[@value = '25' and @units='mmol/L']">
                Lab Test - Quantitative Result Carbon dioxide MUST be 25 mmol/L 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:interpretationCode[@code = 'N']">
                Lab Test - Interpretation Code Carbon dioxide MUST be N. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:author">
                Lab Test - Interpretation Author MUST be vendor supplied. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:low[@value='23' and @units='mmol/L']">
                Lab Test - Interpretation Carbon dioxide reference range must be 23 to 29 mmol/L. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:high[@value='29' and @units='mmol/L']">
                Lab Test - Interpretation Carbon dioxide reference range must be 23 to 29 mmol/L. 
            </sch:assert>
            
            
            
            <!-- Glucose -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:code[@code = '2345-7']">
                Lab Order Test Order Code MUST contain 2345-7.
            </sch:assert>   
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:value[@value = '125' and @units='mg/dl']">
                Lab Test - Quantitative Result Glucose MUST be 125 mg/dl 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:interpretationCode[@code = 'N']">
                Lab Test - Interpretation Code Glucose MUST be N. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:author">
                Lab Test - Interpretation Author MUST be vendor supplied. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:low[@value='64' and @units='mg/dL']">
                Lab Test - Interpretation Glucose reference range must be 64 to 100 mg/dL. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:high[@value='100' and @units='mg/dL']">
                Lab Test - Interpretation Glucose reference range must be 64 to 100 mg/dL. 
            </sch:assert>
            
            <!-- Urea nitrogen -->
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:code[@code = '3094-0']">
                Lab Order Test Order Code MUST contain 3094-0.
            </sch:assert>   
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:value[@value = '9' and @units='mg/dl']">
                Lab Test - Quantitative Result Urea nitrogen MUST be 9 mg/dl 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:interpretationCode[@code = 'N']">
                Lab Test - Interpretation Code Urea nitrogen MUST be N. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:author">
                Lab Test - Interpretation Author MUST be vendor supplied. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:low[@value='7' and @units='mg/dL']">
                Lab Test - Interpretation Urea nitrogen reference range must be 7 to 20 mg/dl. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:high[@value='20' and @units='mg/dL']">
                Lab Test - Interpretation Urea nitrogen reference range must be 7 to 20 mg/dl. 
            </sch:assert>
            
            <!-- Creatinine -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:code[@code = '2160-0']">
                Lab Order Test Order Code MUST contain 2160-0.
            </sch:assert>   
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:value[@value = '1.4' and @units='mg/dl']">
                Lab Test - Quantitative Result Creatinine MUST be 1.4 mg/dl 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:interpretationCode[@code = 'HX']">
                Lab Test - Interpretation Code Creatinine MUST be HX. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:author">
                Lab Test - Interpretation Author MUST be vendor supplied. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:low[@value='0.8' and @units='mg/dL']">
                Lab Test - Interpretation Creatinine reference range must be 0.8 to 1.2 mg/dL. 
            </sch:assert>
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.3' and @extension='2015-08-01']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2015-08-01']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.2' and @extension='2015-08-01']/cda:referenceRange/cda:high[@value='1.2' and @units='mg/dL']">
                Lab Test - Interpretation Creatinine reference range must be 0.8 to 1.2 mg/dL. 
            </sch:assert>
            
            
     
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.7.1'][cda:templateId/@extension='2014-06-09']/cda:entry/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.13'][cda:templateId/@extension='2014-06-09']/cda:code[@code='40701008']">
                A procedure with code 40701008 MUST be present. 
            </sch:assert>
     
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.7.1'][cda:templateId/@extension='2014-06-09']/cda:entry/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.13'][cda:templateId/@extension='2014-06-09']/cda:code[@code='46825001']">
                A procedure with code 46825001 MUST be present. 
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.7.1'][cda:templateId/@extension='2014-06-09']/cda:entry/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.13'][cda:templateId/@extension='2014-06-09']/cda:code[@code='710580007']">
                A procedure with code 710580007 MUST be present. 
            </sch:assert>
            
                        
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.42'][cda:templateId/@extension='2014-06-09']/cda:manufacturedProduct[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.23'][cda:templateId/@extension='2014-06-09']/cda:manufacturedMaterial/cda:code[@code='316151']">
                A medication with code 316151 MUST be present. 
            </sch:assert>  
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.42'][cda:templateId/@extension='2014-06-09']/cda:effectiveTime/cda:low">
                Medication ordered start time MUST be vendor supplied 
            </sch:assert>

            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.42'][cda:templateId/@extension='2014-06-09']/cda:effectiveTime/cda:high">
                Medication ordered stop time MUST be vendor supplied 
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.42'][cda:templateId/@extension='2014-06-09']/cda:manufacturedProduct[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.23'][cda:templateId/@extension='2014-06-09']/cda:manufacturedMaterial/cda:code[@code='316176']">
                A medication with code 316176 MUST be present. 
            </sch:assert>  

            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.1'][cda:templateId/@extension='2019-04-01']/cda:entryRelationship/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code[@code='6387']">
                Type of Anesthesia administered MUST be 6387
            </sch:assert>

            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.7']/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.52'][cda:templateId/@extension='2015-08-01']/cda:consumable/cda:manufacturedProduct[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.54'][cda:templateId/@extension='2014-06-09']/cda:manufacturedMaterial/cda:code[@code='135']">
                Supplied/Administered Immunization MUST be 135 
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.7']/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.52'][cda:templateId/@extension='2015-08-01']/cda:consumable/cda:manufacturedProduct[templateId/@root='2.16.840.1.113883.10.20.22.4.54'][cda:templateId/@extension='2014-06-09']/cda:manufacturedMaterial/cda:lotNumberText = '6312FK62'">
                Immunization Lot Number MUST be 6312FK62
            </sch:assert>


            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.7']/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.52'][cda:templateId/@extension='2015-08-01']/doseQuantity[@code='.5' and @unit = 'mL']">
                Immunization amount administered MUST be .5mL 
            </sch:assert>
            

            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.7']/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.52'][cda:templateId/@extension='2015-08-01']/cda:performer">
                Immunization Performer MUST be vendor supplied. 
            </sch:assert>

            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.7']/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.52'][cda:templateId/@extension='2015-08-01']/cda:performer">
                Immunization author participation MUST be vendor supplied. 
            </sch:assert>
            

            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.34.2.7']/cda:substanceAdministration[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.120']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code[@code='121']">
                Ordered immunization MUST be 121 
            </sch:assert>
           

            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.17']/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.78'][cda:templateId/@extension='2014-06-09']/cda:value[@value='8517006']">
                Smoking status MUST be 8517006 
            </sch:assert>

<!-- Vital signs -->
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='8302-2']/cda:value[@value='178' and @unit='cm']">
                Vital Sign height must be 178 cm.
            </sch:assert>    
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='3141-9']/cda:value[@value='135' and @unit='lb_av']">
                Vital Sign weight must be 135 lb_av.
            </sch:assert>              
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='8310-5']/cda:value/@value='98.6'">
                Vital Sign temparature must be 98.6 F.
            </sch:assert>              
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='8480-6']/cda:value/@value='64'">
                Vital Sign Blood Pressure - Systolic must be 64 mm Hg.
            </sch:assert>        
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='8480-6']/cda:value/@value='90'">
                Vital Sign Blood Pressure - diastolic  must be 90 mm Hg.
            </sch:assert>       
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='9279-1']/cda:value/@value='16'">
                Vital Sign Respiratory rate per minute must be 16 bpm.
            </sch:assert>           
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='8867-4']/cda:value/@value='88'">
                Vital Sign heart rate must be 88 /m.
            </sch:assert>            
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='59408-5']/cda:value/@value='100'">
                Vital Sign pulse oximetry must be 100
            </sch:assert>  
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[@root='2.16.840.1.113883.10.20.22.2.4.1']/cda:entry/cda:organizer[@root='2.16.840.1.113883.10.20.22.4.26']/cda:component/cda:observation[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.27'][cda:templateId/@extension='2014-06-09'][cda:code/@code='3150-0']/cda:value/@value='97'">
                Vital Sign inhaled oxygen concentration must be 97
            </sch:assert>           
            
            
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.23'][cda:templateId/@extension='2014-06-09']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.135']/cda:supply[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.50'][cda:templateId/@extension='2014-06-09']/cda:participantRole[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.37']/cda:playingDevice/cda:code[@code='10889942550678']">
                Device Distinct Identification Code MUST be 10889942550678
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.23'][cda:templateId/@extension='2014-06-09']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.135']/cda:supply[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.50'][cda:templateId/@extension='2014-06-09']/cda:effectiveTime/cda:high = '20301015'">
                Device Expiration Date MUST be 20301015
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.23'][cda:templateId/@extension='2014-06-09']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.135']/cda:supply[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.50'][cda:templateId/@extension='2014-06-09']/cda:participantRole[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.37']/cda:playingDevice/cda:code[@code='12-151417']">
                Device model number MUST be 12-151417
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.23'][cda:templateId/@extension='2014-06-09']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.135']/cda:supply[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.50'][cda:templateId/@extension='2014-06-09']/cda:participantRole[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.37']/cda:playingDevice/cda:id[@root='10889942550678']">
                Device identifier MUST be 10889942550678 
            </sch:assert>
            <sch:assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root='2.16.840.1.113883.10.20.22.2.23'][cda:templateId/@extension='2014-06-09']/cda:organizer[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.135']/cda:supply[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.50'][cda:templateId/@extension='2014-06-09']/cda:participantRole[cda:templateId/@root='2.16.840.1.113883.10.20.22.4.37']/cda:playingDevice/cda:id[@root='12-151417']">
                Device catalog number MUST be 12-151417
            </sch:assert>
            <sch:assert test="">
                MUST be 
            </sch:assert>
            <sch:assert test="">
                MUST be 
            </sch:assert>
            <sch:assert test="">
                MUST be 
            </sch:assert>
            <sch:assert test="">
                MUST be 
            </sch:assert>
            <sch:assert test="">
                MUST be 
            </sch:assert>
            <sch:assert test="">
                MUST be 
            </sch:assert>

            <sch:assert test="">
                MUST be 
            </sch:assert>

        </sch:rule>
        
    </sch:pattern>
</sch:schema>