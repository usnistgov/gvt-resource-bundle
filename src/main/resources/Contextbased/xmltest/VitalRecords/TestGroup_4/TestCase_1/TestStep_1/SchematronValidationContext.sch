<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:voc="http://www.lantanagroup.com/voc" xmlns:svs="urn:ihe:iti:svs:2008" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns="urn:hl7-org:v3" xmlns:cda="urn:hl7-org:v3" xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="voc" uri="http://www.lantanagroup.com/voc" />
  <sch:ns prefix="svs" uri="urn:ihe:iti:svs:2008" />
  <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance" />
  <sch:ns prefix="sdtc" uri="urn:hl7-org:sdtc" />
  <sch:ns prefix="cda" uri="urn:hl7-org:v3" />
    <title> 
        Message validation for Vital Records CDA
    </title> 
    
    <phase id="errors">   
      <active sch:pattern="Errors"></active>
   </phase>
   <phase id="warnings">
      <active sch:pattern="Warnings"></active>
   </phase>
   <sch:pattern id="Errors">
	   <sch:rule context="/cda:ClinicalDocument/cda:title[1]">    
	   <sch:assert test=".='Coded Cause of Death Document'">
             ERROR: Error - The Required element Title is wrong
            </sch:assert>
	    <sch:report test=".='Coded Cause of Death Document'"> 
	     REPORT: Report - Document Title is correct
	    </sch:report>
            <sch:report test="string-length(.) &lt; 5"> 
               REPORT: Report - title is really short in Local
             </sch:report>
             <sch:report test="string-length(.) &gt; 5"> 
              REPORT: Report - title is really long in Local
            </sch:report>
            </sch:rule>   
   </sch:pattern> 
    <sch:pattern id="Warnings"> 
	    <sch:rule context="/cda:ClinicalDocument/cda:effectiveTime[1]">    
	    <sch:assert test="@value='20161107094421-0500'">
	       ERROR: Error -  Crap wrong
	    </sch:assert>
	    <sch:report test="@value='20161107094421-0500'">
	     REPORT: Report - Value is correct
	    </sch:report>
      </sch:rule>   
   </sch:pattern> 
 </sch:schema>
