<xsl:stylesheet version="2.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"   
  xmlns:oac="http://oac.cdlib.org">

<!-- should refactor ead.html.xslt to use the same element-name to label/head "table" -->

<xsl:function name="oac:supply-label-heading">
	<xsl:param name="element"/>
	<xsl:variable name="element-name" select="name($element)"/>
	
	<xsl:choose>
		<xsl:when test="$element-name = 'unittitle'">
			<xsl:text>Title</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'unitdate'">
			<xsl:text>Date</xsl:text>
			<!-- xsl:if test="@type"> (<xsl:value-of select="@type"/>)</xsl:if -->
		</xsl:when>
		<xsl:when test="$element-name = 'unitid'">
			<xsl:text>Identifier/Call Number</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'abstract'">
			<xsl:text>Abstract</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'container'">
			<xsl:text>Storage Unit</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'langmaterial'">
			<xsl:text>Languge of Material</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'materialspec'">
			<xsl:text>Material Specific Details</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'note'">
			<xsl:text>Note</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'origination'">
			<xsl:text>Creator/Collector</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'physdesc'">
			<xsl:text>Physical Description</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'location'">
			<xsl:text>Storage Location</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'repository'">
			<xsl:text>Contributing Institution</xsl:text>
		</xsl:when>
	<!-- supply headings if not present -->
		<xsl:when test="$element-name = 'accessrestrict'">
			<xsl:text>Access Information</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'accurals'">
			<xsl:text>Future Additions</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'acquinfo'">
			<xsl:text>Acquisition Information</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'altformavail'">
			<xsl:text>Alternative For of Materials Available</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'appraisal'">
			<xsl:text>Appraisal Information</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'arrangement'">
			<xsl:text>Arrangement</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'bibliography'">
			<xsl:text>Bibliography</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'bioghist'">
			<xsl:text>Biography/Organization History</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'controlaccess'">
			<xsl:text>Subjects and Indexing Terms</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'custodhist'">
			<xsl:text>Custodial History</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'descgrp'">
			<xsl:text>Administrative Information</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'fileplan'">
			<xsl:text>Original Filing System</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'index'">
			<xsl:text>Index</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'note'">
			<xsl:text>Note</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'odd'">
			<xsl:text>Additional Note</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'originalsloc'">
			<xsl:text>Location of Original Material</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'phystech'">
			<xsl:text>Technical Details</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'perfercite'">
			<xsl:text>How to Cite</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'processinfo'">
			<xsl:text>Processing/Project Information</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'relatedmaterial'">
			<xsl:text>Related Material</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'scopecontent'">
			<xsl:text>Scope and Content Note</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'seperatedmaterial'">
			<xsl:text>Removed or Separated Material</xsl:text>
		</xsl:when>
		<xsl:when test="$element-name = 'userestrict'">
			<xsl:text>Conditions of Use</xsl:text>
		</xsl:when>
	</xsl:choose>
</xsl:function>

</xsl:stylesheet>
