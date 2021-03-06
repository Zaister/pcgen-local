<?xml version="1.0" encoding="UTF-8"?>
<!-- CVS $Revision: 1046 $ $Author: stefan $ $Date: 2008-05-15 16:48:53 +0200 (Do, 15 Mai 2008) $ -->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:output indent="yes"/>

	<xsl:attribute-set name="border">
		<xsl:attribute name="border-width">0.5pt</xsl:attribute>
		<xsl:attribute name="border-style">solid</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="centre">
		<xsl:attribute name="text-align">center</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="vcentre">
		<xsl:attribute name="vertical-align">middle</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="right">
		<xsl:attribute name="text-align">right</xsl:attribute>
	</xsl:attribute-set>

 <xsl:attribute-set name="greyback">
	 <xsl:attribute name="border-color">black</xsl:attribute>
	 <xsl:attribute name="background-color">#bbbbbb</xsl:attribute>
	 <xsl:attribute name="color">black</xsl:attribute>
 </xsl:attribute-set>

	<xsl:attribute-set name="whiteback">
		<xsl:attribute name="border-color">black</xsl:attribute>
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="darkline">
		<xsl:attribute name="background-color">#eeeeee</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="lightline">
		<xsl:attribute name="background-color">#ffffff</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="darkline.dark">
		<xsl:attribute name="background-color">#dddddd</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="lightline.dark">
		<xsl:attribute name="background-color">#eeeeee</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="padded">
		<xsl:attribute name="padding-left">10pt</xsl:attribute>
		<xsl:attribute name="padding-right">10pt</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="border.temp" use-attribute-sets="centre">
		<xsl:attribute name="border-top-width">2pt</xsl:attribute>
		<xsl:attribute name="border-left-width">2pt</xsl:attribute>
		<xsl:attribute name="border-right-width">2pt</xsl:attribute>
		<xsl:attribute name="border-bottom-width">2pt</xsl:attribute>
		<xsl:attribute name="border-style">solid</xsl:attribute>
		<xsl:attribute name="border-color">lightgrey</xsl:attribute>
		<xsl:attribute name="color">darkgrey</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="bio">
		<xsl:attribute name="display-align">after</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
		<xsl:attribute name="background-color">white</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="bio.title">
		<xsl:attribute name="color">black</xsl:attribute>
		<xsl:attribute name="background-color">white</xsl:attribute>
		<xsl:attribute name="border-top-color">black</xsl:attribute>
 		<xsl:attribute name="border-top-width">0.5pt</xsl:attribute>
 		<xsl:attribute name="border-top-style">solid</xsl:attribute>
 	</xsl:attribute-set>

	<xsl:attribute-set name="picture" use-attribute-sets="border">
		<xsl:attribute name="border-color">white</xsl:attribute>
		<xsl:attribute name="background-color">white</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="stat.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="stat.score" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="stat.modifier" use-attribute-sets="stat.score"/>
	<xsl:attribute-set name="hp.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="hp.total" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="hp.current" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="hp.subdual" use-attribute-sets="hp.current"/>
	<xsl:attribute-set name="damage.reduction" use-attribute-sets="hp.current"/>
	<xsl:attribute-set name="speed" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="ac.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="ac.total" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="ac.flatfooted" use-attribute-sets="ac.total"/>
	<xsl:attribute-set name="ac.touch" use-attribute-sets="ac.total"/>
	<xsl:attribute-set name="ac" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="miss_chance" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="spell_failure" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="ac_check" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="spell_resistance" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="initiative.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="initiative.total" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="initiative.general" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="bab.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="bab.total" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="skills.header" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="skills.darkline" use-attribute-sets="darkline"/>
	<xsl:attribute-set name="skills.lightline" use-attribute-sets="lightline"/>
	<xsl:attribute-set name="skills.darkline.total" use-attribute-sets="darkline.dark"/>
	<xsl:attribute-set name="skills.lightline.total" use-attribute-sets="lightline.dark"/>

	<xsl:attribute-set name="skills.footer">
		<xsl:attribute name="border-bottom-color">black</xsl:attribute>
		<xsl:attribute name="border-bottom-width">0.5pt</xsl:attribute>
		<xsl:attribute name="border-bottom-style">solid</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="saves.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="saves.total" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="saves" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="tohit.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="tohit.total" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="tohit" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="weapon.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="weapon" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="weapon.hilight" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="protection.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="protection.darkline" use-attribute-sets="darkline centre"/>
	<xsl:attribute-set name="protection.lightline" use-attribute-sets="lightline centre"/>
	<xsl:attribute-set name="actionpoints.title" use-attribute-sets="greyback border centre vcentre"/>
	<xsl:attribute-set name="actionpoints" use-attribute-sets="whiteback border vcentre padded"/>
	<xsl:attribute-set name="checklist.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="checklist" use-attribute-sets="whiteback border vcentre"/>
	<xsl:attribute-set name="rage.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="rage" use-attribute-sets="whiteback border vcentre"/>
	<xsl:attribute-set name="wildshape.title" use-attribute-sets="greyback border centre" />
	<xsl:attribute-set name="wildshape" use-attribute-sets="whiteback border centre" />
	<xsl:attribute-set name="bard.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="bard" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="channel_energy.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="channel_energy" use-attribute-sets="whiteback border vcentre"/>
	<xsl:attribute-set name="stunningfist.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="stunningfist" use-attribute-sets="whiteback border vcentre"/>
	<xsl:attribute-set name="layonhands.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="layonhands" use-attribute-sets="whiteback border vcentre"/>
	<xsl:attribute-set name="knightschallenge.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="knightschallenge" use-attribute-sets="whiteback border vcentre"/>
	<xsl:attribute-set name="domains.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="domains.lightline" use-attribute-sets="lightline"/>
	<xsl:attribute-set name="domains.darkline" use-attribute-sets="darkline"/>
	<xsl:attribute-set name="opposition.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="opposition" use-attribute-sets="whiteback border"/>
	<xsl:attribute-set name="languages.title" use-attribute-sets="greyback centre"/>
	<xsl:attribute-set name="languages" use-attribute-sets="darkline"/>
	<xsl:attribute-set name="templates.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="templates.lightline" use-attribute-sets="lightline"/>
	<xsl:attribute-set name="templates.darkline" use-attribute-sets="darkline"/>
	<xsl:attribute-set name="companions.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="companions" use-attribute-sets="whiteback border"/>
	<xsl:attribute-set name="equipment.title" use-attribute-sets="greyback centre"/>
	<xsl:attribute-set name="equipment.lightline" use-attribute-sets="lightline"/>
	<xsl:attribute-set name="equipment.darkline" use-attribute-sets="darkline"/>
	<xsl:attribute-set name="weight.title" use-attribute-sets="greyback centre"/>
	<xsl:attribute-set name="weight" use-attribute-sets="lightline right"/>
	<xsl:attribute-set name="weight.solid" use-attribute-sets="darkline"/>
	<xsl:attribute-set name="money.title" use-attribute-sets="greyback centre"/>
	<xsl:attribute-set name="money.lightline" use-attribute-sets="lightline"/>
	<xsl:attribute-set name="money.darkline" use-attribute-sets="darkline"/>
	<xsl:attribute-set name="magic.title" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="magic.lightline" use-attribute-sets="lightline"/>
	<xsl:attribute-set name="magic.darkline" use-attribute-sets="darkline"/>
	<xsl:attribute-set name="abilities.title" use-attribute-sets="greyback centre"/>
	<xsl:attribute-set name="abilities.lightline" use-attribute-sets="lightline"/>
	<xsl:attribute-set name="abilities.darkline" use-attribute-sets="darkline"/>
	<xsl:attribute-set name="spelllist.known.header" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="spelllist.known.known" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="spelllist.known.perday" use-attribute-sets="whiteback border centre"/>
	<xsl:attribute-set name="spelllist.concentration" use-attribute-sets="greyback border centre"/>
	<xsl:attribute-set name="spelllist.concentration.bonus" use-attribute-sets="whiteback border"/>
	<xsl:attribute-set name="spelllist.header" use-attribute-sets="greyback centre"/>
	<xsl:attribute-set name="spelllist.footer" use-attribute-sets="greyback centre"/>
	<xsl:attribute-set name="spelllist.levelheader" use-attribute-sets="greyback"/>
	<xsl:attribute-set name="spelllist.darkline" use-attribute-sets="darkline.dark"/>
	<xsl:attribute-set name="spelllist.lightline" use-attribute-sets="lightline.dark"/>
	<xsl:attribute-set name="spells.memorized.header" use-attribute-sets="greyback border centre"/>

  <xsl:attribute-set name="spells.memorized.level" use-attribute-sets="whiteback border centre">
		<xsl:attribute name="border-bottom-width">0.5pt</xsl:attribute>
		<xsl:attribute name="border-bottom-color">black</xsl:attribute>
		<xsl:attribute name="border-bottom-style">solid</xsl:attribute>
	</xsl:attribute-set>

  <xsl:attribute-set name="spells.memorized" use-attribute-sets="whiteback border centre"/>

  <xsl:variable name="PCGenFont">Noto Sans</xsl:variable>

  <xsl:decimal-format name="pcgen" minus-sign="–"/>

<!--
====================================
====================================
	TEMPLATE - ABILITIES LINES
====================================
====================================-->
	<xsl:template name="abilities">
		<xsl:param name="name"/>
		<xsl:param name="source"/>
		<xsl:param name="description"/>
		<xsl:param name="benefit"/>
		<xsl:param name="position"/>
		<xsl:variable name="tag">
			<xsl:choose>
				<xsl:when test="benefit">
					<xsl:value-of select="'benefit'"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="'description'"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>		
		<xsl:variable name="row1">
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" font-weight="bold" vertical-align="text-bottom">
					<xsl:value-of select="$name"/>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="7pt" text-align="right" vertical-align="text-bottom">
					<xsl:if test="$source != ''">
						<xsl:value-of select="$source"/>
					</xsl:if>
				</fo:block>
			</fo:table-cell>
		</xsl:variable>
		<xsl:variable name="row2">
			<fo:table-cell padding-left="1pt" padding-right="1pt" padding-top="1pt" padding-bottom="3pt" number-columns-spanned="2">
				<fo:block font-size="7pt" text-align="justify">
					<xsl:call-template name="paragraphlist">
						<xsl:with-param name="tag" select="$tag"/>
					</xsl:call-template>
				</fo:block>
			</fo:table-cell>
		</xsl:variable>
		<xsl:if test="$position mod 2 = 1">
			<xsl:call-template name="abilities.darkline">
				<xsl:with-param name="row1" select="$row1"/>
				<xsl:with-param name="row2" select="$row2"/>
			</xsl:call-template>
		</xsl:if>
		<xsl:if test="$position mod 2 = 0">
			<xsl:call-template name="abilities.lightline">
				<xsl:with-param name="row1" select="$row1"/>
				<xsl:with-param name="row2" select="$row2"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>

	<xsl:template name="abilities.darkline">
		<xsl:param name="row1"/>
		<xsl:param name="row2"/>
		<fo:table-row xsl:use-attribute-sets="abilities.darkline" keep-with-next.within-column="always">
			<xsl:copy-of select="$row1"/>
		</fo:table-row>
		<fo:table-row xsl:use-attribute-sets="abilities.darkline" keep-with-next.within-column="always">
			<xsl:copy-of select="$row2"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template name="abilities.lightline">
		<xsl:param name="row1"/>
		<xsl:param name="row2"/>
		<fo:table-row xsl:use-attribute-sets="abilities.lightline" keep-with-next.within-column="always">
			<xsl:copy-of select="$row1"/>
		</fo:table-row>
		<fo:table-row xsl:use-attribute-sets="abilities.lightline" keep-with-next.within-column="always">
			<xsl:copy-of select="$row2"/>
		</fo:table-row>
	</xsl:template>

<!--
====================================
====================================
	TEMPLATE - PAGE HEADER
====================================
====================================-->
	<xsl:template name="page.header">
		<fo:static-content flow-name="header">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="54mm"/>
				<fo:table-column column-width="2mm"/>
				<fo:table-column column-width="81mm"/>
				<fo:table-column column-width="2mm"/>
				<fo:table-column column-width="53mm"/>

				<fo:table-body>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="10pt" font-weight="bold"><xsl:value-of select="/character/basics/name"/></fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell padding-top="2.5pt" xsl:use-attribute-sets="bio">
							<fo:block font-size="10pt" padding-top="3pt">
								<xsl:variable name="classcount">
									<xsl:value-of select="count(/character/basics/classes/class)"/>
								</xsl:variable>
								<xsl:for-each select="/character/basics/classes/class">
									<xsl:sort select="/character/basics/sequence"/>
									<xsl:value-of select="name"/>
									<xsl:text> </xsl:text>
									<xsl:value-of select="level"/>
									<xsl:if test="position() &lt; $classcount">, </xsl:if>
								</xsl:for-each>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio" text-align="right">
							<fo:block font-size="10pt"><xsl:value-of select="/character/basics/playername"/></fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">NAME</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">CLASS</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio.title" text-align="right">
							<fo:block font-size="6pt" padding-top="1pt">PLAYER NAME</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:static-content>
	</xsl:template>

	<!--
====================================
====================================
	TEMPLATE - PAGE FOOTER
====================================
====================================-->
	<xsl:template name="page.footer">
		<fo:static-content flow-name="footer">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="1.875in"/>
				<fo:table-column column-width="3.75in"/>
				<fo:table-column column-width="1.875in"/>
				<fo:table-body>
					<fo:table-row keep-with-next="always" keep-together="always">
						<fo:table-cell text-align="start" border-top-color="black" border-top-style="solid" border-top-width="0.1pt" background-color="transparent" padding-top="2pt">
							<fo:block font-size="5pt">
								<xsl:value-of select="/character/export/date"/>
								<xsl:text> </xsl:text>
								<xsl:value-of select="/character/export/time"/>
							</fo:block>
							<fo:block font-size="5pt" font-weight="bold">Created using <fo:basic-link external-destination="http://pcgen.org/" color="blue">PCGen</fo:basic-link> <xsl:value-of select="/character/export/version"/> on <xsl:value-of select="/character/export/date"/><xsl:text> at </xsl:text><xsl:value-of select="/character/export/time"/></fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" wrap-option="no-wrap" border-top-color="black" border-top-style="solid" border-top-width="0.1pt" background-color="transparent" padding-top="2pt">
							<fo:block text-align="center" font-size="5pt">PCGen Character Template by Zaister, based on work by Frugal, ROG, Arcady, Barak &amp; Dimrill.</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="end" border-top-color="black" border-top-style="solid" border-top-width="0.1pt" background-color="transparent" padding-top="2pt">
							<fo:block font-size="7pt">Page <fo:page-number/></fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:static-content>
	</xsl:template>

	<!--
====================================
====================================
	TEMPLATE - CHARACTER HEADER
====================================
====================================-->
	<xsl:template match="basics">
		<!-- Character Header -->
			<fo:table table-layout="fixed" width="190mm">
				<xsl:choose>
					<xsl:when test="string-length(portrait/portrait) &gt; 0">
						<fo:table-column column-width="22mm"/> <!-- Name, Class, Level -->
						<fo:table-column column-width="2mm"/>  <!--  -->
						<fo:table-column column-width="22mm"/> <!-- Name, Class, Experience -->
						<fo:table-column column-width="2mm"/>  <!-- -->
						<fo:table-column column-width="22mm"/> <!-- Playername, Race, Next Level  -->
						<fo:table-column column-width="2mm"/>  <!-- -->
						<fo:table-column column-width="22mm"/> <!-- Playername, Race, Age -->
						<fo:table-column column-width="2mm"/>  <!-- -->
						<fo:table-column column-width="22mm"/> <!-- Deity, Size, Gender -->
						<fo:table-column column-width="2mm"/>  <!-- -->
						<fo:table-column column-width="22mm"/> <!-- Region, Height/Weight, Eyes -->
						<fo:table-column column-width="2mm"/>  <!-- -->
						<fo:table-column column-width="22mm"/> <!-- Alignment, Vision, Hair -->
						<fo:table-column column-width="2mm"/>  <!--  -->
						<fo:table-column column-width="22mm"/> <!-- Portait -->
					</xsl:when>
					<xsl:otherwise>
						<fo:table-column column-width="27mm"/> <!-- Name, Class, Level -->
						<fo:table-column column-width="2mm"/>  <!--  -->
						<fo:table-column column-width="25mm"/> <!-- Name, Class, Experience -->
						<fo:table-column column-width="2mm"/>  <!-- -->
						<fo:table-column column-width="25mm"/> <!-- Playername, Race, Next Level  -->
						<fo:table-column column-width="2mm"/>  <!-- -->
						<fo:table-column column-width="25mm"/> <!-- Playername, Race, Age -->
						<fo:table-column column-width="2mm"/>  <!-- -->
						<fo:table-column column-width="25mm"/> <!-- Deity, Size, Gender -->
						<fo:table-column column-width="2mm"/>  <!-- -->
						<fo:table-column column-width="24mm"/> <!-- Region, Height/Weight, Eyes -->
						<fo:table-column column-width="2mm"/>  <!-- -->
						<fo:table-column column-width="27mm"/> <!-- Alignment, Vision, Hair -->
					</xsl:otherwise>
				</xsl:choose>
				<fo:table-body>
					<fo:table-row>
											<xsl:message>Test</xsl:message>
						<fo:table-cell number-columns-spanned="3" xsl:use-attribute-sets="bio">
							<fo:block font-size="10pt" font-weight="bold">
								<xsl:value-of select="name"/>
								<xsl:if test="string-length(followerof) &gt; 0">	- <xsl:value-of select="followerof"/></xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell number-columns-spanned="3" xsl:use-attribute-sets="bio">
							<fo:block font-size="10pt"><xsl:value-of select="playername"/></fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell padding-top="2.5pt" xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt"><xsl:value-of select="deity/name"/></fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell padding-top="2.5pt" xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt"><xsl:value-of select="region"/></fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell padding-top="2.5pt" xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt"><xsl:value-of select="alignment/long"/></fo:block>
						</fo:table-cell>
						<xsl:if test="string-length(portrait/portait) &gt; 0" >
							<fo:table-cell><fo:block/></fo:table-cell>
							<fo:table-cell number-rows-spanned="6"  xsl:use-attribute-sets="picture">
								<fo:block>
								<xsl:variable name="portrait_file" select="portrait"/>
									<fo:external-graphic src="file:{$portrait_file}" width="22mm"/>
								</fo:block>
							</fo:table-cell>
						</xsl:if>
					</fo:table-row>
					<fo:table-row>
											<xsl:message>Test</xsl:message>
						<fo:table-cell number-columns-spanned="3" xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">NAME</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell number-columns-spanned="3" xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">PLAYER NAME</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">DEITY</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">REGION</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">ALIGNMENT</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
											<xsl:message>Test</xsl:message>
						<fo:table-cell number-columns-spanned="3" xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt">
								<xsl:variable name = "classcount" ><xsl:value-of select="count(classes/class)"/></xsl:variable>
								<xsl:for-each select = "classes/class">
									<xsl:sort select="sequence"/>
									<xsl:variable name="classname">
										<xsl:value-of select="translate(name, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
									</xsl:variable>
									<xsl:variable name="archetypecount">
										<xsl:value-of select="count(/character/basics/archetypes/archetype[contains(type,$classname)])"/>
									</xsl:variable>
									<xsl:value-of select="name"/>
									<xsl:if test="$archetypecount &gt; 0">
										<xsl:text> (</xsl:text>
										<xsl:for-each select="/character/basics/archetypes/archetype[contains(type,$classname)]">
											<xsl:value-of select="name"/>
											<xsl:if test="position() &lt; $archetypecount">, </xsl:if>
										</xsl:for-each>
										<xsl:text>)</xsl:text>
									</xsl:if>
									<xsl:text> </xsl:text>
									<xsl:value-of select="level"/>
									<xsl:if test="position() &lt; $classcount">, </xsl:if>
								</xsl:for-each>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell number-columns-spanned="3" xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="race"/></fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="size/long"/></fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<xsl:choose>
								<xsl:when test="not (height/feet = '0' and height/inches = '0' and weight/weight_nounit = '0')">
									<xsl:choose>
										<xsl:when test="height/feet != '0' and height/inches != '0' and weight/weight_nounit != '0'">
											<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="height/total"/> / <xsl:value-of select="weight/weight_unit"/></fo:block>
										</xsl:when>
										<xsl:otherwise>
											<xsl:choose>
												<xsl:when test="height/feet = '0' and height/inches = '0'">
													<fo:block font-size="8pt" padding-top="3pt">&#8212; / <xsl:value-of select="weight/weight_unit"/></fo:block>
												</xsl:when>
												<xsl:otherwise>
													<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="height/total"/> / &#8212;</fo:block>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:when>
							</xsl:choose>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt">
								<xsl:value-of select="vision/all"/>
								<xsl:if test="vision/all = ''">normal</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
											<xsl:message>Test</xsl:message>
						<fo:table-cell number-columns-spanned="3" xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">CLASS</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell number-columns-spanned="3" xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">RACE</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">SIZE</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">HEIGHT / WEIGHT</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">VISION</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
											<xsl:message>Test</xsl:message>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt">
								<xsl:value-of select="classes/levels_total"/>
								<xsl:if test="classes/levels_total != classes/levels_ecl">/<xsl:value-of select="classes/levels_ecl"/>
								</xsl:if>
								/ <xsl:value-of select="cr"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="experience/current"/></fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="experience/next_level"/></fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt">
								<xsl:if test="age != '0'">
									<xsl:value-of select="age"/>
									<xsl:if test="birthday != ''"> (<xsl:value-of select="birthday"/>)</xsl:if>
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="gender/long"/></fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt"><xsl:value-of select="eyes/color"/></fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio">
							<fo:block font-size="8pt" padding-top="3pt">
								<xsl:value-of select="hair/color"/>
								<xsl:if test="hair/color != '' and hair/length !=''">, </xsl:if>
								<xsl:value-of select="hair/length"/></fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
											<xsl:message>Test</xsl:message>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">
								<xsl:text>LEVEL</xsl:text>
								<xsl:if test="classes/levels_total != classes/levels_ecl">
									<xsl:text>/ECL</xsl:text>
								</xsl:if>
								<xsl:text> / CR</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">EXPERIENCE</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">NEXT LEVEL</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">AGE</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">GENDER</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">EYES</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="bio.title">
							<fo:block font-size="6pt" padding-top="1pt">HAIR</fo:block>
						</fo:table-cell>
					</fo:table-row>
											<xsl:message>Test</xsl:message>
				</fo:table-body>
			</fo:table>
	</xsl:template>


	<!--
====================================
====================================
	TEMPLATE - GENERIC OUTPUT-FOR-LOOP
====================================
====================================-->
	<xsl:template name="for.loop">
		<xsl:param name="i" select="1"/>
		<xsl:param name="count" select="0"/>
		<xsl:param name="used" select="0"/>
		<xsl:param name="display" select="'&#x274F;'"/>
		<xsl:param name="display_used" select="'&#x2717;'"/>

		<!-- &#x274F; is the ZapfDingbats symbol for a 'box' -->
		<xsl:if test="$i &lt;= $count">
			<!-- Show this box -->
			<xsl:choose>
				<xsl:when test="$i &lt;= $used">
					<xsl:value-of select="$display_used"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$display"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:if test="$i mod 5 = 0">
				<xsl:text> </xsl:text>
			</xsl:if>
			<!-- Show all of the remaining boxes -->
			<xsl:call-template name="for.loop">
				<xsl:with-param name="i" select="$i + 1"/>
				<xsl:with-param name="display" select="$display"/>
				<xsl:with-param name="display_used" select="$display_used"/>
				<xsl:with-param name="count" select="$count"/>
				<xsl:with-param name="used" select="$used"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>



	<!--
====================================
====================================
	TEMPLATE - GENERIC OUTPUT Cumulative total
====================================
====================================-->
	<xsl:template name="Total">
		<xsl:param name="Items"/>
		<xsl:param name="RunningTotal"/>
		<xsl:choose>
			<xsl:when test="not($Items)">
				<!-- No more Items so return Running Total -->
				<xsl:copy-of select="$RunningTotal"/>
			</xsl:when>
			<xsl:otherwise>
				<!-- Call template for remaining Items -->
				<xsl:variable name="CurrentTotal" select="$RunningTotal + ($Items[1]/quantity * $Items[1]/cost)"/>
				<xsl:call-template name="Total">
					<xsl:with-param name="Items" select="$Items[position()>1]"/>
					<xsl:with-param name="RunningTotal" select="$CurrentTotal"/>
				</xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - GENERIC Process
====================================
====================================-->
	<xsl:template name="process.attack.string">
		<xsl:param name="bab"/>
		<xsl:param name="string" select="''"/>

		<xsl:choose>
			<xsl:when test="$bab &gt; 5">
				<xsl:call-template name="process.attack.string">
					<xsl:with-param name="bab" select="$bab - 5"/>
					<xsl:with-param name="string"><xsl:value-of select="$string"/>+<xsl:value-of select="$bab"/>/</xsl:with-param>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$string"/><xsl:value-of select="$bab"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - ABILITY BLOCK
====================================
====================================-->
	<xsl:template match="abilities">
		<!-- BEGIN Ability Block -->
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="11mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="1mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="6mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="1mm"/>
			<fo:table-column column-width="6mm"/>
			<fo:table-body>
				<fo:table-row>
											<xsl:message>Test</xsl:message>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="4.5pt" font-size="4pt">ABILITY NAME</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">ABILITY SCORE</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">EQUIPPED SCORE</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">ABILITY MODIFIER</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">ABILITY DAMAGE</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="4.5pt" font-size="4pt">PENALTY</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<xsl:for-each select="ability">
					<fo:table-row>
											<xsl:message>Test</xsl:message>
						<fo:table-cell xsl:use-attribute-sets="stat.title">
							<fo:block line-height="10pt" font-weight="bold" font-size="10pt" space-before="1pt">
								<xsl:value-of select="name/short"/>
							</fo:block>
							<fo:block line-height="4pt" font-size="4pt">
								<xsl:value-of select="name/long"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="stat.score">
							<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="base"/></fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<xsl:if test="no_temp_score != base">
							<fo:table-cell xsl:use-attribute-sets="stat.score">
								<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="no_temp_score"/></fo:block>
							</fo:table-cell>
						</xsl:if>
						<xsl:if test="no_temp_score = base">
							<fo:table-cell height="4pt" xsl:use-attribute-sets="border.temp">
								<fo:block/>
							</fo:table-cell>
						</xsl:if>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="stat.modifier">
							<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="no_temp_modifier"/></fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell height="4pt" xsl:use-attribute-sets="border.temp">
							<fo:block space-before.optimum="2pt" font-size="10pt">
								<xsl:if test="score != no_temp_score">
									<xsl:value-of select="score"/>
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell height="4pt" xsl:use-attribute-sets="border.temp">
							<fo:block space-before.optimum="2pt" font-size="10pt">
								<xsl:if test="score != no_temp_score">
									<xsl:value-of select="modifier"/>
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row height="2pt"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
				</xsl:for-each>
											<xsl:message>Test END</xsl:message>
			</fo:table-body>
		</fo:table>
		<!-- END Ability Block -->
	</xsl:template>




<!--
====================================
====================================
	TEMPLATE - HP
====================================
====================================-->
	<xsl:template match="character" mode="hp_table">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="11mm"/>	<!-- TITLE -->
			<fo:table-column column-width="2mm"/><!-- space -->
			<fo:table-column column-width="61mm"/><!-- WOUNDS -->
			<fo:table-column column-width="2mm"/><!-- space  -->
			<fo:table-column column-width="30mm"/><!-- NON-LETHAL -->
			<fo:table-column column-width="3mm"/><!-- space -->
			<fo:table-column column-width="27mm"/><!-- SPEED -->
			<fo:table-body>

				<fo:table-row>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell display-align="after">
						<fo:block text-align="center" font-size="4pt">CURRENT HIT POINTS</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell display-align="after">
						<fo:block text-align="center" font-size="4pt">NON-LETHAL DAMAGE</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell display-align="after">
						<fo:block text-align="center" font-size="4pt">DAMAGE REDUCTION / SPEED</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="hp.title">
						<fo:block line-height="10pt" font-weight="bold" font-size="10pt" space-before="1pt">HP</fo:block>
						<fo:block line-height="4pt" font-size="4pt">hit points</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell display-align="center" number-rows-spanned="3" xsl:use-attribute-sets="hp.current">
						<fo:block font-size="10pt">
						</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell display-align="before" text-align="left" number-rows-spanned="3" padding="2pt" xsl:use-attribute-sets="hp.subdual">
						<fo:block font-size="10pt">
							<xsl:if test="basics/burn/damage &gt; 0">
								<xsl:value-of select="basics/burn/damage"/>
							</xsl:if>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell display-align="center" xsl:use-attribute-sets="damage.reduction">
						<fo:block font-size="8pt">
							<xsl:value-of select="hit_points/damage_reduction"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row height="2pt"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="hp.total">
						<fo:block space-before.optimum="2pt" font-size="10pt">
							<xsl:value-of select="hit_points/points"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell display-align="center" xsl:use-attribute-sets="speed">
						<fo:block font-size="8pt">
							<xsl:value-of select="basics/move/all"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<!-- END HP Table -->
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - AC TABLE
====================================
====================================-->
	<xsl:template match="armor_class">
		<fo:table table-layout="fixed" width="100%" space-before="3pt">
			<fo:table-column column-width="11mm"/>  <!-- TITLE -->
			<fo:table-column column-width="2mm"/>   <!-- -->
			<fo:table-column column-width="9mm"/>   <!-- TOTAL AC -->
			<fo:table-column column-width="2mm"/>   <!-- : -->
			<fo:table-column column-width="8mm"/>   <!-- TOUCH -->
			<fo:table-column column-width="2mm"/>   <!-- = -->
			<fo:table-column column-width="8mm"/>   <!-- FLAT -->
			<fo:table-column column-width="2mm"/>   <!-- : -->
			<fo:table-column column-width="6mm"/>   <!-- BASE -->
			<fo:table-column column-width="2mm"/>   <!-- + -->
			<fo:table-column column-width="5mm"/>   <!-- armor -->
			<fo:table-column column-width="2mm"/>   <!-- + -->
			<fo:table-column column-width="5mm"/>   <!-- shield -->
			<fo:table-column column-width="2mm"/>   <!-- + -->
			<fo:table-column column-width="5mm"/>   <!-- stat -->
			<fo:table-column column-width="2mm"/>   <!-- + -->
			<fo:table-column column-width="5mm"/>   <!-- size -->
			<fo:table-column column-width="2mm"/>   <!-- + -->
			<fo:table-column column-width="5mm"/>   <!-- natural armor -->
			<fo:table-column column-width="2mm"/>   <!-- + -->
			<fo:table-column column-width="5mm"/>   <!-- dodge -->
			<fo:table-column column-width="2mm"/>   <!-- + -->
			<fo:table-column column-width="5mm"/>   <!-- deflection -->
			<fo:table-column column-width="2mm"/>   <!-- + -->
			<fo:table-column column-width="5mm"/>   <!-- misc   -->
			<fo:table-column column-width="3mm"/>   <!-- -->
			<fo:table-column column-width="7mm"/>   <!-- arcane spell failure -->
			<fo:table-column column-width="3mm"/>   <!-- -->
			<fo:table-column column-width="7mm"/>   <!-- armour check-->
			<fo:table-column column-width="3mm"/>   <!-- -->
			<fo:table-column column-width="7mm"/>   <!-- SR -->
			<fo:table-body>
				<fo:table-row>
											<xsl:message>Test</xsl:message>
					<fo:table-cell xsl:use-attribute-sets="ac.title">
						<fo:block line-height="10pt" font-weight="bold" font-size="10pt" space-before="1pt">AC</fo:block>
						<fo:block line-height="4pt" font-size="4pt">armor class</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell display-align="center" xsl:use-attribute-sets="ac.total">
						<fo:block font-size="10pt"><xsl:value-of select="total"/></fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center" >
						<fo:block text-align="center" font-size="6pt">:</fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center" xsl:use-attribute-sets="ac.touch">
						<fo:block font-size="10pt"><xsl:value-of select="touch"/></fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center">
						<fo:block text-align="center"  font-size="6pt">:</fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center" xsl:use-attribute-sets="ac.flatfooted">
						<fo:block font-size="10pt"><xsl:value-of select="flat"/></fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center">
						<fo:block text-align="center" font-size="6pt">=</fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center" xsl:use-attribute-sets="ac">
						<fo:block font-size="10pt"><xsl:value-of select="base"/></fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center">
						<fo:block text-align="center" font-size="6pt">+</fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center" xsl:use-attribute-sets="ac">
						<fo:block font-size="10pt"><xsl:value-of select="armor_bonus"/></fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center">
						<fo:block text-align="center" font-size="6pt">+</fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center" xsl:use-attribute-sets="ac">
						<fo:block font-size="10pt"><xsl:value-of select="shield_bonus"/></fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center">
						<fo:block text-align="center" font-size="6pt">+</fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center" xsl:use-attribute-sets="ac">
						<fo:block font-size="10pt"><xsl:value-of select="stat_mod"/></fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center">
						<fo:block text-align="center" font-size="6pt">+</fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center" xsl:use-attribute-sets="ac">
						<fo:block font-size="10pt"><xsl:value-of select="size_mod"/></fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center">
						<fo:block text-align="center" font-size="6pt">+</fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center"  xsl:use-attribute-sets="ac">
						<fo:block font-size="10pt"><xsl:value-of select="natural"/></fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center">
						<fo:block text-align="center" font-size="6pt">+</fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center"  xsl:use-attribute-sets="ac">
						<fo:block font-size="10pt"><xsl:value-of select="dodge_bonus"/></fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center">
						<fo:block text-align="center" font-size="6pt">+</fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center"  xsl:use-attribute-sets="ac">
						<fo:block font-size="10pt"><xsl:value-of select="deflection"/></fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center">
						<fo:block text-align="center" font-size="6pt">+</fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center" xsl:use-attribute-sets="ac">
						<fo:block text-align="center" font-size="10pt"><xsl:value-of select="misc"/></fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell display-align="center" xsl:use-attribute-sets="spell_failure">
						<fo:block font-size="10pt"><xsl:value-of select="spell_failure"/></fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell display-align="center" xsl:use-attribute-sets="ac_check">
						<fo:block font-size="10pt"><xsl:value-of select="check_penalty"/></fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell display-align="center" xsl:use-attribute-sets="spell_resistance">
						<fo:block font-size="10pt"><xsl:value-of select="spell_resistance"/></fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row height="0.5pt"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
				<fo:table-row>
											<xsl:message>Test</xsl:message>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="6pt">TOTAL</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="6pt">TOUCH</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="6pt">FLAT</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">BASE</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">ARMOR BONUS</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">SHIELD BONUS</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">ABILITY MOD.</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">SIZE MOD.</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">NATURAL ARMOR</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">DODGE BONUS</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">DEFLECT. BONUS</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">MISC MOD.</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">ARCANE SPELL FAILURE</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">ARMOR CHECK PENALTY</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">SPELL RESISTANCE</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<!-- END AC Table -->
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - Initiative TABLE
====================================
====================================-->
	<xsl:template match="initiative">
		<!-- BEGIN ini-base table -->
		<fo:table table-layout="fixed" width="100%"> <!-- 48mm -->
			<fo:table-column column-width="19mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="8mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="8mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-body>
				<fo:table-row height="2pt"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="initiative.title">
						<fo:block line-height="10pt" font-weight="bold" font-size="10pt" space-before="1pt">Initiative</fo:block>
						<fo:block line-height="4pt" font-size="4pt">modifier</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="initiative.total">
						<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="total"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">=</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="initiative.general">
						<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="dex_mod"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">+</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="initiative.general">
						<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="misc_mod"/></fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row height="0.5pt"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
				<fo:table-row>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="1pt" font-size="6pt">TOTAL</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">DEX MODIFIER</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">MISC MODIFIER</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<!-- END ini-base table -->
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - Base Attack TABLE
====================================
====================================-->
	<xsl:template match="bab" mode="bab" >
		<!-- BEGIN ini-base table -->
		<fo:table table-layout="fixed" width="100%"> <!-- 48mm -->
			<fo:table-column column-width="19mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="27mm"/>
			<fo:table-body>
				<fo:table-row height="2pt"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="bab.title">
						<fo:block line-height="10pt" font-weight="bold" font-size="8pt">Base Attack</fo:block>
						<fo:block line-height="4pt" font-size="4pt">bonus</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="bab.total">
						<fo:block space-before.optimum="2pt" font-size="10pt">
							<xsl:call-template name="process.attack.string">
								<xsl:with-param name="bab" select="."/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<!-- END ini-base table -->
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - SKILLS TABLE
====================================
====================================-->
	<xsl:template match="skills">
		<xsl:param name="first_skill" select="0"/>
		<xsl:param name="last_skill" select="0"/>
		<xsl:param name="column_width" select="'wide'"/>

		<!-- begin skills table -->
		<xsl:if test="count(skill) &gt;= $first_skill" >
			<fo:table table-layout="fixed" width="100%" border-collapse="collapse">
				<xsl:choose>
					<xsl:when test="$column_width='wide'">
						<fo:table-column column-width="4mm"/>
						<fo:table-column column-width="38mm"/>
						<fo:table-column column-width="3mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="8mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="8mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="8mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="8mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="8mm"/>
					</xsl:when>
					<xsl:otherwise>
						<fo:table-column column-width="3mm"/>
						<fo:table-column column-width="42mm"/>
						<fo:table-column column-width="2mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="6mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="6mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="6mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="6mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="1mm"/>
						<fo:table-column column-width="6mm"/>
					</xsl:otherwise>
				</xsl:choose>
				<fo:table-header>
					<fo:table-row height="2pt"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
					<fo:table-row>
											<xsl:message>Test</xsl:message>
						<fo:table-cell xsl:use-attribute-sets="skills.header" border-top-width="1pt" border-left-width="1pt" border-right-width="0pt" border-bottom-width="0pt">
							<fo:block/>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="skills.header" number-columns-spanned="4" border-top-width="1pt" border-left-width="0pt" border-right-width="0pt" border-bottom-width="0pt">
							<fo:block text-align="left" space-before.optimum="4pt" line-height="4pt" font-size="5pt">
								<xsl:text>TOTAL SKILLPOINTS: </xsl:text>
								<xsl:value-of select="skillpoints/total"/>
								<xsl:if test="skillpoints/unused &gt; 0">
									<xsl:text> (UNUSED: </xsl:text><xsl:value-of select="skillpoints/unused"/><xsl:text>)</xsl:text>
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="skills.header" number-columns-spanned="2" padding="1pt" border-top-width="1pt" border-left-width="0pt" border-right-width="0pt" border-bottom-width="0pt" border-style="solid">
							<fo:block text-align="end" line-height="10pt" font-weight="bold" font-size="10pt">
								Skills
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="10" padding="1pt" xsl:use-attribute-sets="skills.header" border-top-width="1pt" border-left-width="0pt"	border-right-width="1pt" border-bottom-width="0pt">
							<fo:block text-align="end" space-before.optimum="4pt" line-height="4pt" font-size="5pt">
								<xsl:text>MAX RANKS: </xsl:text><xsl:value-of select="max_class_skill_level"/><xsl:text> </xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
											<xsl:message>Test</xsl:message>
						<fo:table-cell xsl:use-attribute-sets="skills.header" border-top-width="0pt" 	border-left-width="1pt" border-right-width="0pt" border-bottom-width="1pt">
							<fo:block/>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="2" xsl:use-attribute-sets="skills.header" padding="1pt" border-top-width="0pt" border-left-width="0pt" border-right-width="0pt" border-bottom-width="1pt">
							<fo:block text-align="start" font-weight="bold" font-size="8pt" >
								SKILL NAME
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="3" xsl:use-attribute-sets="skills.header" padding="1pt" border-top-width="0pt" border-left-width="0pt" border-right-width="0pt" border-bottom-width="1pt">
							<fo:block font-size="4pt">
								KEY ABILITY
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="3" xsl:use-attribute-sets="skills.header" padding="1pt" border-top-width="0pt" border-left-width="0pt" border-right-width="0pt" border-bottom-width="1pt">
							<fo:block text-align="center" font-size="4pt">
								SKILL MOD.
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="3" xsl:use-attribute-sets="skills.header" padding="1pt" border-top-width="0pt" border-left-width="0pt" border-right-width="0pt" border-bottom-width="1pt">
							<fo:block text-align="center" font-size="4pt">
								ABILITY MOD.
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="3" xsl:use-attribute-sets="skills.header" padding="1pt" border-top-width="0pt" border-left-width="0pt" border-right-width="0pt" border-bottom-width="1pt">
							<fo:block text-align="center" space-before.optimum="5pt" font-size="4pt" >
								RANKS
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="2"  xsl:use-attribute-sets="skills.header" padding="1pt" border-top-width="0pt" border-left-width="0pt" border-right-width="1pt" border-bottom-width="1pt">
							<fo:block text-align="center" font-size="4pt">
								MISC MOD.
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-header>
				<fo:table-body>

					<xsl:for-each select="skill">
											<xsl:message>Test</xsl:message>
						<xsl:if test="position() &gt;= $first_skill and position() &lt;= $last_skill" >
							<xsl:variable name="skills.row">
								<fo:table-cell>
									<fo:block font-size="6pt" font-family="ZapfDingbats">
										<xsl:if test="string-length(classes) &gt; 0">
											&#x2713;
										</xsl:if>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<xsl:choose>
										<xsl:when test="contains(type, 'SkillUse') = false">
											<fo:block space-before.optimum="1pt" font-size="8pt" start-indent="1em" text-indent="-1em">
												<xsl:value-of select="name"/>
											</fo:block>
										</xsl:when>
										<xsl:otherwise>
											<fo:block space-before.optimum="1pt" font-size="8pt" start-indent="1em" text-indent="-1em" font-style="italic">
												<xsl:value-of select="name"/>
											</fo:block>
										</xsl:otherwise>
									</xsl:choose>
								</fo:table-cell>
								<fo:table-cell number-columns-spanned="2"><fo:block/></fo:table-cell>

								<fo:table-cell>
									<fo:block space-before.optimum="1pt" font-size="8pt">
										<xsl:value-of select="ability"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell number-columns-spanned="2"><fo:block/></fo:table-cell>

								<xsl:choose>
									<xsl:when test="position() mod 2 = 0">
										<xsl:apply-templates select="skill_mod" mode="skills.total.darkline"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="skill_mod" mode="skills.total.lightline"/>
									</xsl:otherwise>
								</xsl:choose>
								<fo:table-cell number-columns-spanned="2"><fo:block text-align="center" space-before.optimum="3pt" line-height="6pt" font-size="6pt">=</fo:block></fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="center" space-before.optimum="1pt" font-size="8pt">
										<xsl:value-of select="format-number(ability_mod, '+#;–#', 'pcgen')"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell number-columns-spanned="2">
									<fo:block text-align="center" space-before.optimum="3pt" line-height="6pt" font-size="6pt">
										<xsl:if test="ranks &gt; 0">+</xsl:if>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="center" space-before.optimum="1pt" font-size="8pt">
										<xsl:if test="ranks &gt; 0">
											<xsl:if test="contains(type, 'SkillUse')">[</xsl:if>
											<xsl:choose>
												<xsl:when test="round(ranks) = ranks">
													<xsl:value-of select="round(ranks)"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="ranks"/>
												</xsl:otherwise>
											</xsl:choose>
											<xsl:if test="contains(type, 'SkillUse')">]</xsl:if>
										</xsl:if>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell number-columns-spanned="2">
									<fo:block text-align="center" space-before.optimum="3pt" line-height="6pt" font-size="6pt">
										<xsl:if test="misc_mod != 0">+</xsl:if>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="center" space-before.optimum="1pt" font-size="8pt">
										<xsl:if test="misc_mod != 0">
											<xsl:value-of select="format-number(misc_mod, '+#;–#', 'pcgen')"/>
										</xsl:if>
									</fo:block>
								</fo:table-cell>
							</xsl:variable>

							<xsl:choose>
								<xsl:when test="position() mod 2 = 0">
									<xsl:apply-templates select="." mode="skills.darkline">
										<xsl:with-param name="skills.row" select="$skills.row"/>
									</xsl:apply-templates>
								</xsl:when>
								<xsl:otherwise>
									<xsl:apply-templates select="." mode="skills.lightline">
										<xsl:with-param name="skills.row" select="$skills.row"/>
									</xsl:apply-templates>
								</xsl:otherwise>
							</xsl:choose>

						</xsl:if>
					</xsl:for-each>

					<fo:table-row height="9pt">
											<xsl:message>Test</xsl:message>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="skills.footer"><fo:block/></fo:table-cell>

						<fo:table-cell number-columns-spanned="2"><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="skills.footer"><fo:block/></fo:table-cell>
						<fo:table-cell number-columns-spanned="2"><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="skills.footer"><fo:block/></fo:table-cell>
						<fo:table-cell number-columns-spanned="2">
							<fo:block text-align="center" space-before.optimum="3pt" line-height="6pt" font-size="6pt">=</fo:block>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="skills.footer"><fo:block/></fo:table-cell>
						<fo:table-cell number-columns-spanned="2">
							<fo:block text-align="center" space-before.optimum="3pt" line-height="6pt" font-size="6pt">+</fo:block>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="skills.footer"><fo:block/></fo:table-cell>
						<fo:table-cell number-columns-spanned="2">
							<fo:block text-align="center" space-before.optimum="3pt" line-height="6pt" font-size="6pt">+</fo:block>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="skills.footer"><fo:block/></fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="17">
							<fo:block text-align="center" font-size="6pt">
							  <fo:inline font-family="ZapfDingbats">&#x2713;</fo:inline>: class skill
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
											<xsl:message>Test END</xsl:message>
			</fo:table>
			</xsl:if>
		<!-- END Skills table -->
	</xsl:template>

	<xsl:template match="skill" mode="skills.darkline">
		<xsl:param name="skills.row"/>
		<fo:table-row xsl:use-attribute-sets="skills.darkline">
			<xsl:copy-of select="$skills.row"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template match="skill" mode="skills.lightline">
		<xsl:param name="skills.row"/>
		<fo:table-row xsl:use-attribute-sets="skills.lightline">
			<xsl:copy-of select="$skills.row"/>
		</fo:table-row>
	</xsl:template>


	<xsl:template match="skill_mod" mode="skills.total.darkline">
		<fo:table-cell xsl:use-attribute-sets="skills.darkline.total">
			<fo:block text-align="center" space-before.optimum="1pt" font-size="8pt"><xsl:value-of select="format-number(., '+#;–#', 'pcgen')"/></fo:block>
		</fo:table-cell>
	</xsl:template>


	<xsl:template match="skill_mod" mode="skills.total.lightline">
		<fo:table-cell xsl:use-attribute-sets="skills.lightline.total">
			<fo:block text-align="center" space-before.optimum="1pt" font-size="8pt"><xsl:value-of select="format-number(., '+#;–#', 'pcgen')"/></fo:block>
		</fo:table-cell>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - SAVES TABLE
====================================
====================================-->
	<xsl:template match="saving_throws">
		<!-- BEGIN Saves table -->
		<fo:table table-layout="fixed" width="100%" space-before="2mm">
			<fo:table-column column-width="79mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="21mm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<xsl:apply-templates select="." mode="saves"/>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell padding-start="1pt" xsl:use-attribute-sets="border">
						<fo:block font-size="5pt" font-weight="bold">Conditional modifiers:</fo:block>
							<xsl:for-each select="conditional_modifiers/savebonus">
								<fo:block font-size="5pt"><xsl:value-of select="description"/></fo:block>
							</xsl:for-each>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<!-- END Saves table -->
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - SAVES TABLE
====================================
====================================-->
	<xsl:template match="saving_throws" mode="saves">
		<!-- BEGIN Saves table -->
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="25mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="1pt" font-size="6pt">SAVING THROWS</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" space-before.optimum="1pt" font-size="6pt">TOTAL</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">BASE SAVE</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">ABILITY MODIFIER</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">MAGIC MODIFIER</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">MISC MODIFIER</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="4pt">TEMP MODIFIER</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<xsl:for-each select="saving_throw">
					<fo:table-row space-before="2pt">
											<xsl:message>Test</xsl:message>
						<fo:table-cell xsl:use-attribute-sets="saves.title">
							<fo:block line-height="10pt" font-weight="bold" font-size="10pt" space-before="1pt">
								<xsl:value-of select="translate(substring(name/long,1,1), 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
								<xsl:value-of select="translate(substring(name/long,2),   'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz')"/>
							</fo:block>
							<fo:block line-height="4pt" font-size="4pt">(<xsl:value-of select="ability"/>)</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="saves.total">
							<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="total"/></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">=</fo:block>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="saves">
							<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="base"/></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">+</fo:block>
						</fo:table-cell>
						<fo:table-cell  xsl:use-attribute-sets="saves">
							<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="abil_mod"/></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">+</fo:block>
						</fo:table-cell>
						<fo:table-cell  xsl:use-attribute-sets="saves">
							<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="magic_mod"/></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">+</fo:block>
						</fo:table-cell>
						<fo:table-cell  xsl:use-attribute-sets="saves">
							<fo:block space-before.optimum="2pt" font-size="10pt"><xsl:value-of select="misc_mod"/></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center" space-before.optimum="5pt" font-size="6pt">+</fo:block>
						</fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="border.temp"><fo:block/></fo:table-cell>
					</fo:table-row>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - Action Points
====================================
====================================-->
	<xsl:template match="actionpoints">
		<xsl:if test="maximum &gt; 0">
			<!-- BEGIN Action Points Table -->
		<fo:table table-layout="fixed" width="100%" space-after="2mm">
				<fo:table-column column-width="35mm"/>
				<fo:table-column column-width="2mm"/>
				<fo:table-column column-width="49mm"/>
				<fo:table-body>
					<fo:table-row height="2pt"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="actionpoints.title">
							<fo:block line-height="14pt" font-weight="bold" font-size="9pt">Action Points (<xsl:value-of select="dicecount"/>d<xsl:value-of select="dicesize"/>)</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="actionpoints">
							<fo:block line-height="14pt" font-size="9pt" font-family="ZapfDingbats">
								<xsl:call-template name="for.loop">
									<xsl:with-param name="count" select="maximum"/>
									<xsl:with-param name="used" select="used" />
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			<!-- END Action Points Table -->
		</xsl:if>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - Hero Points
====================================
====================================-->
	<xsl:template match="hero_points">
		<xsl:if test=". &gt; 0">
			<!-- BEGIN Hero Points Table -->
		<fo:table table-layout="fixed" width="100%" space-after="2mm">
				<fo:table-column column-width="35mm"/>
				<fo:table-column column-width="2mm"/>
				<fo:table-column column-width="49mm"/>
				<fo:table-body>
					<fo:table-row height="2pt"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="actionpoints.title">
							<fo:block line-height="14pt" font-weight="bold" font-size="9pt">Hero Points</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="actionpoints">
							<fo:block line-height="14pt" font-size="9pt" font-family="ZapfDingbats">
								<xsl:call-template name="for.loop">
									<xsl:with-param name="count" select="."/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			<!-- END Hero Points Table -->
		</xsl:if>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - Luck Rerolls
====================================
====================================-->
	<xsl:template match="luck_rerolls">
		<xsl:if test=". &gt; 0">
			<!-- BEGIN Faith Points Table -->
		<fo:table table-layout="fixed" width="100%" space-after="2mm">
				<fo:table-column column-width="35mm"/>
				<fo:table-column column-width="2mm"/>
				<fo:table-column column-width="49mm"/>
				<fo:table-body>
					<fo:table-row height="2pt"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="actionpoints.title">
							<fo:block line-height="14pt" font-weight="bold" font-size="9pt">Luck Rerolls</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="actionpoints">
							<fo:block line-height="14pt" font-size="9pt" font-family="ZapfDingbats">
								<xsl:call-template name="for.loop">
									<xsl:with-param name="count" select="."/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			<!-- END Luck Rerolls Table -->
		</xsl:if>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - Faith Points
====================================
====================================-->
	<xsl:template match="faith_points">
		<xsl:if test=". &gt; 0">
			<!-- BEGIN Faith Points Table -->
		<fo:table table-layout="fixed" width="100%" space-after="2mm">
				<fo:table-column column-width="35mm"/>
				<fo:table-column column-width="2mm"/>
				<fo:table-column column-width="49mm"/>
				<fo:table-body>
					<fo:table-row height="2pt"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="actionpoints.title">
							<fo:block line-height="14pt" font-weight="bold" font-size="9pt">Faith Points</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="actionpoints">
							<fo:block line-height="14pt" font-size="9pt" font-family="ZapfDingbats">
								<xsl:call-template name="for.loop">
									<xsl:with-param name="count" select="."/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			<!-- END Faith Points Table -->
		</xsl:if>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - Inspiration Points
====================================
====================================-->
	<xsl:template match="inspiration_points">
		<xsl:if test=". &gt; 0">
			<!-- BEGIN Inspiration Points Table -->
		<fo:table table-layout="fixed" width="100%" space-after="2mm">
				<fo:table-column column-width="35mm"/>
				<fo:table-column column-width="2mm"/>
				<fo:table-column column-width="49mm"/>
				<fo:table-body>
					<fo:table-row height="2pt"/>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="actionpoints.title">
							<fo:block line-height="14pt" font-weight="bold" font-size="9pt">Inspiration Points</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="actionpoints">
							<fo:block line-height="14pt" font-size="9pt" font-family="ZapfDingbats">
								<xsl:call-template name="for.loop">
									<xsl:with-param name="count" select="."/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			<!-- END Inspiration Points Table -->
		</xsl:if>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - Points of Spin
====================================
====================================-->
	<xsl:template match="spin_points">
		<xsl:if test=". &gt; 0">
			<!-- BEGIN Points of Spin Table -->
		<fo:table table-layout="fixed" width="100%" space-after="2mm">
				<fo:table-column column-width="35mm"/>
				<fo:table-column column-width="2mm"/>
				<fo:table-column column-width="49mm"/>
				<fo:table-body>
					<fo:table-row height="2pt"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="actionpoints.title">
							<fo:block line-height="14pt" font-weight="bold" font-size="9pt">Points of Spin</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="actionpoints">
							<fo:block line-height="14pt" font-size="9pt" font-family="ZapfDingbats">
								<xsl:call-template name="for.loop">
									<xsl:with-param name="count" select="."/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			<!-- END Points of Spin Table -->
		</xsl:if>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - Burn Points
====================================
====================================-->
	<xsl:template match="burn">
		<xsl:if test="max &gt; 0">
			<!-- BEGIN Burn Points Table -->
		<fo:table table-layout="fixed" width="100%" space-after="2mm">
				<fo:table-column column-width="35mm"/>
				<fo:table-column column-width="2mm"/>
				<fo:table-column column-width="49mm"/>
				<fo:table-body>
					<fo:table-row height="2pt"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="actionpoints.title">
							<fo:block line-height="14pt" font-weight="bold" font-size="9pt">Burn</fo:block>
						</fo:table-cell>
						<fo:table-cell><fo:block/></fo:table-cell>
						<fo:table-cell xsl:use-attribute-sets="actionpoints">
							<fo:block line-height="14pt" font-size="9pt" font-family="ZapfDingbats">
								<xsl:call-template name="for.loop">
									<xsl:with-param name="count" select="max"/>
									<xsl:with-param name="used" select="current"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			<!-- END Hero Points Table -->
		</xsl:if>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - ATTACK TABLE
====================================
====================================-->
	<xsl:template match="attack" mode="ranged_melee">
		<!-- BEGIN Attack table -->
		<fo:table table-layout="fixed" width="100%" space-before="2mm">
			<fo:table-column column-width="17mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="22mm"/>
			<fo:table-column column-width="3mm"/>
			<fo:table-column column-width="21mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="7mm"/>
			<fo:table-body>
											<xsl:message>Test</xsl:message>
				<xsl:call-template name="to_hit.header">
					<xsl:with-param name="dalign" select="'after'"/>
					<xsl:with-param name="stat" select="'STAT'"/>
				</xsl:call-template>

											<xsl:message>Test</xsl:message>
				<xsl:apply-templates select="melee" mode="to_hit">
					<xsl:with-param name="title" select="'Melee'"/>
				</xsl:apply-templates>

				<fo:table-row height="2.5pt"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>

											<xsl:message>Test</xsl:message>
				<xsl:apply-templates select="ranged" mode="to_hit">
					<xsl:with-param name="title" select="'Ranged'"/>
				</xsl:apply-templates>

				<fo:table-row height="2.5pt"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>

											<xsl:message>Test</xsl:message>
				<xsl:apply-templates select="cmb" mode="to_hit">
					<xsl:with-param name="title" select="'CMB'" />
				</xsl:apply-templates>

			</fo:table-body>
		</fo:table>
		<fo:table table-layout="fixed" width="100%" space-before="2mm">
			<fo:table-column column-width="22mm"/>
			<fo:table-column column-width="2mm"/>
			<fo:table-column column-width="12mm"/>
			<fo:table-column column-width="1mm"/>
			<fo:table-column column-width="12mm"/>
			<fo:table-column column-width="1mm"/>
			<fo:table-column column-width="12mm"/>
			<fo:table-column column-width="1mm"/>
			<fo:table-column column-width="12mm"/>
			<fo:table-column column-width="1mm"/>
			<fo:table-column column-width="12mm"/>
			<fo:table-column column-width="1mm"/>
			<fo:table-column column-width="12mm"/>
			<fo:table-body>
											<xsl:message>Test</xsl:message>
				<xsl:apply-templates select="cmb" mode="maneuvers">
				</xsl:apply-templates>
				<fo:table-row height="0.5pt"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
											<xsl:message>Test</xsl:message>
				<xsl:call-template name="maneuvers.header">
					<xsl:with-param name="dalign" select="'after'"/>
				</xsl:call-template>

				<xsl:if test="count(conditional_modifiers/combatbonus) &gt; 0">
					<fo:table-row>
											<xsl:message>Test</xsl:message>
						<fo:table-cell number-columns-spanned="13" padding="1pt" xsl:use-attribute-sets="border">
							<fo:block font-size="5pt" font-weight="bold">Conditional Combat Modifiers:</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
											<xsl:message>Test</xsl:message>
						<fo:table-cell number-columns-spanned="13" padding="1pt" xsl:use-attribute-sets="border">
							<xsl:for-each select="conditional_modifiers/combatbonus[contains(type, 'COMBATOPTION')]">
								<fo:block font-size="5pt" space-before.optimum="1pt">
									<fo:inline font-weight="bold"><xsl:value-of select="name"/></fo:inline>: <xsl:value-of select="description"/>
								</fo:block>
							</xsl:for-each>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
											<xsl:message>Test</xsl:message>
						<fo:table-cell number-columns-spanned="13" padding="1pt" xsl:use-attribute-sets="border">
							<fo:block>
								<xsl:for-each select="conditional_modifiers/combatbonus[contains(type, 'COMBATOPTION')=false]">
									<fo:block font-size="5pt" space-before.optimum="1pt">
										<fo:inline font-weight="bold"><xsl:value-of select="name"/></fo:inline>: <xsl:value-of select="description"/>
									</fo:block>
								</xsl:for-each>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>
			</fo:table-body>
		</fo:table>
											<xsl:message>Test END</xsl:message>
		<!-- END Attack table -->
	</xsl:template>


	<xsl:template name="to_hit.header">
		<xsl:param name="dalign" select="'after'"/>
		<xsl:param name="stat"/>
				<fo:table-row >
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
						<fo:block text-align="center" font-size="6pt">TOTAL</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
						<fo:block text-align="center" font-size="4pt">BASE ATTACK BONUS</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
						<fo:block text-align="center" font-size="4pt"><xsl:value-of select="$stat"/> MODIFIER</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
						<fo:block text-align="center" font-size="4pt">SIZE MODIFIER</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
						<fo:block text-align="center" font-size="4pt">MISC MODIFIER</fo:block>
					</fo:table-cell>
					<fo:table-cell><fo:block/></fo:table-cell>
					<fo:table-cell>
						<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
						<fo:block text-align="center" font-size="4pt">TEMP MODIFIER</fo:block>
					</fo:table-cell>
				</fo:table-row>
	</xsl:template>

	<xsl:template match="melee|ranged|cmb" mode="to_hit">
		<xsl:param name="title" />
		<fo:table-row>
			<fo:table-cell xsl:use-attribute-sets="tohit.title">
				<fo:block space-before.optimum="0.5pt" line-height="10pt" font-weight="bold" font-size="10pt" space-before="1pt"><xsl:value-of select="$title"/></fo:block>
				<fo:block line-height="4pt" font-size="4pt">attack bonus</fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit.total">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="total" /></fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit" border-bottom-width="0pt" border-top-width="0pt">
				<fo:block space-before.optimum="5pt" font-size="6pt">=</fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="base_attack_bonus" /></fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit" border-bottom-width="0pt" border-top-width="0pt">
				<fo:block space-before.optimum="5pt" font-size="6pt">+</fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="stat_mod" /></fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit" border-bottom-width="0pt" border-top-width="0pt">
				<fo:block space-before.optimum="5pt" font-size="6pt">+</fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="size_mod" /></fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit" border-bottom-width="0pt" border-top-width="0pt">
				<fo:block space-before.optimum="5pt" font-size="6pt">+</fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
<!-- 				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="misc_mod" /></fo:block> -->
				<fo:block space-before.optimum="3pt" font-size="8pt">+0</fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit" border-bottom-width="0pt" border-top-width="0pt">
				<fo:block space-before.optimum="5pt" font-size="6pt">+</fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="border.temp"><fo:block/></fo:table-cell>
		</fo:table-row>
	</xsl:template>

	<xsl:template match="cmb" mode="maneuvers">
		<fo:table-row>
			<fo:table-cell xsl:use-attribute-sets="tohit.title">
				<fo:block space-before.optimum="0.5pt" line-height="10pt" font-weight="bold" font-size="10pt" space-before="1pt">CMB</fo:block>
				<fo:block line-height="4pt" font-size="4pt">combat maneuver bonus</fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="grapple_attack" /></fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="trip_attack" /></fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="disarm_attack" /></fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="sunder_attack" /></fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="bullrush_attack" /></fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="overrun_attack" /></fo:block>
			</fo:table-cell>
		</fo:table-row>
		<fo:table-row height="2.5pt"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
		<fo:table-row>
			<fo:table-cell xsl:use-attribute-sets="tohit.title">
				<fo:block space-before.optimum="0.5pt" line-height="10pt" font-weight="bold" font-size="10pt" space-before="1pt">CMD</fo:block>
				<fo:block line-height="4pt" font-size="4pt">combat maneuver defense</fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="grapple_defense" /></fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="trip_defense" /></fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="disarm_defense" /></fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="sunder_defense" /></fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="bullrush_defense" /></fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="tohit">
				<fo:block space-before.optimum="3pt" font-size="8pt"><xsl:value-of select="overrun_defense" /></fo:block>
			</fo:table-cell>
		</fo:table-row>
	</xsl:template>

	<xsl:template name="maneuvers.header">
		<xsl:param name="dalign" select="'after'"/>
		<fo:table-row >
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell>
				<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
				<fo:block text-align="center" font-size="6pt">GRAPPLE</fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell>
				<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
				<fo:block text-align="center" font-size="6pt">TRIP</fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell>
				<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
				<fo:block text-align="center" font-size="6pt">DISARM</fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell>
				<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
				<fo:block text-align="center" font-size="6pt">SUNDER</fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell>
				<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
				<fo:block text-align="center" font-size="6pt">BULL RUSH</fo:block>
			</fo:table-cell>
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell>
				<xsl:attribute name="display-align"><xsl:value-of select="$dalign"/></xsl:attribute>
				<fo:block text-align="center" font-size="6pt">OVERRUN</fo:block>
			</fo:table-cell>
		</fo:table-row>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - Unarmed ATTACK TABLE
====================================
====================================-->
	<xsl:template match="weapons/unarmed">
		<!-- START Unarmed Attack Table -->
		<xsl:choose>
		<xsl:when test="(weapons/naturalattack) &lt; 1">
		<fo:table table-layout="fixed" width="100%" space-before="2mm">
			<fo:table-column column-width="35mm"/>
			<fo:table-column column-width="19mm"/>
			<fo:table-column column-width="16mm"/>
			<fo:table-column column-width="16mm"/>
			<fo:table-column column-width="16mm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell number-rows-spanned="2" xsl:use-attribute-sets="weapon.title">
						<fo:block font-weight="bold" font-size="10pt">Unarmed</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title">
						<fo:block font-size="6pt">Total Attack Bonus</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title">
						<fo:block font-size="6pt">Damage</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title">
						<fo:block font-size="6pt">Critical</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title">
						<fo:block font-size="6pt">Reach</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight">
						<fo:block font-size="8pt"><xsl:value-of select="total"/></fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight">
						<fo:block font-size="8pt"><xsl:value-of select="damage"/></fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight">
						<fo:block font-size="8pt"><xsl:value-of select="critical"/></fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight">
						<fo:block font-size="8pt"><xsl:value-of select="reach"/></fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		</xsl:when>
		<xsl:otherwise/>
		</xsl:choose>

		<!-- STOP Unarmed Attack Table -->
	</xsl:template>

<!--
====================================
====================================
	TEMPLATE - Natural Weapon ATTACK TABLE
====================================
====================================-->
	<xsl:template match="weapons/naturalattack">
		<!-- START Natural Attack Attack Table -->
		<fo:table table-layout="fixed" width="100%" space-before="2mm">
			<fo:table-column column-width="35mm"/>
			<fo:table-column column-width="19mm"/>
			<fo:table-column column-width="16mm"/>
			<fo:table-column column-width="16mm"/>
			<fo:table-column column-width="16mm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell number-rows-spanned="2" xsl:use-attribute-sets="weapon.title">
						<fo:block font-weight="bold" font-size="10pt">
							<xsl:value-of select="name"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title">
						<fo:block font-size="6pt">Total Attack Bonus</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title">
						<fo:block font-size="6pt">Damage</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title">
						<xsl:choose>
							<xsl:when test="string-length(critmult) &gt; 0">
								<fo:block font-size="6pt">Crit/Mult</fo:block>
							</xsl:when>
							<xsl:otherwise>
								<fo:block font-size="6pt">Critical</fo:block>
							</xsl:otherwise>
						</xsl:choose>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title">
						<xsl:choose>
							<xsl:when test="(range) &gt; 0">
								<fo:block font-size="6pt">Range</fo:block>
							</xsl:when>
							<xsl:otherwise>
								<fo:block font-size="6pt">Reach</fo:block>
							</xsl:otherwise>
						</xsl:choose>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight">
						<fo:block font-size="8pt">
							<xsl:if test="tohit &gt; 0">+</xsl:if>
							<xsl:value-of select="tohit"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight">
						<fo:block font-size="8pt">
							<xsl:value-of select="damage"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight">
						<fo:block font-size="8pt">
							<xsl:value-of select="threat"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight">
						<fo:block font-size="8pt">
							<xsl:choose>
								<xsl:when test="(range) &gt; 0">
									<xsl:value-of select="range"/>
									<xsl:value-of select="distance_unit"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="reach"/>
									<xsl:value-of select="distance_unit"/>
								</xsl:otherwise>
							</xsl:choose>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>

		<!-- STOP Unarmed Attack Table -->
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - First 3 weapons
====================================
====================================-->
	<xsl:template match="weapons">
		<xsl:param name="first_weapon" select="0"/>
		<xsl:param name="last_weapon" select="0"/>
		<xsl:param name="column_width" select="'wide'"/>

<!-- 		<xsl:for-each select="weapon[common/hand != 'Not Carried']"> -->
		<xsl:for-each select="weapon[common/hand != 'Equipped' and common/hand != 'Not Carried']">
			<xsl:if test="(position() &gt;= $first_weapon) and (position() &lt;= $last_weapon)" >
											<xsl:message>Test</xsl:message>
				<xsl:apply-templates select="common">
					<xsl:with-param name="column_width" select="$column_width"/>
				</xsl:apply-templates>
											<xsl:message>Test</xsl:message>
				<xsl:apply-templates select="simple">
					<xsl:with-param name="column_width" select="$column_width"/>
				</xsl:apply-templates>
											<xsl:message>Test</xsl:message>
				<xsl:apply-templates select="melee">
					<xsl:with-param name="column_width" select="$column_width"/>
				</xsl:apply-templates>
											<xsl:message>Test</xsl:message>
				<xsl:apply-templates select="ranges">
					<xsl:with-param name="column_width" select="$column_width"/>
				</xsl:apply-templates>
											<xsl:message>Test</xsl:message>
				<xsl:apply-templates select="common" mode="special_properties">
					<xsl:with-param name="column_width" select="$column_width"/>
				</xsl:apply-templates>
											<xsl:message>Test</xsl:message>
				<xsl:apply-templates select="common" mode="charges">
					<xsl:with-param name="column_width" select="$column_width"/>
				</xsl:apply-templates>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - Weapons - common
====================================
====================================-->
	<xsl:template match="common">
		<xsl:param name="column_width" select="'wide'"/>
		<fo:block keep-with-next.within-page="always" keep-together.within-column="always">
		<fo:table table-layout="fixed" width="100%" space-before="2mm">
			<xsl:choose>
				<xsl:when test="$column_width='wide'">
					<fo:table-column column-width="50mm"/>
					<fo:table-column column-width="21mm"/>
					<fo:table-column column-width="9mm"/>
					<fo:table-column column-width="9mm"/>
					<fo:table-column column-width="13mm"/>
				</xsl:when>
				<xsl:otherwise>
					<fo:table-column column-width="47mm"/>
					<fo:table-column column-width="19mm"/>
					<fo:table-column column-width="8mm"/>
					<fo:table-column column-width="8mm"/>
					<fo:table-column column-width="12mm"/>
				</xsl:otherwise>
			</xsl:choose>
			<fo:table-body>
				<fo:table-row keep-with-next.within-page="always">
					<!-- Name row (including Hand, Type, Size and Crit -->
					<fo:table-cell xsl:use-attribute-sets="weapon.title" number-rows-spanned="2">
						<fo:block font-weight="bold" font-size="10pt">
							<xsl:variable name="name" select="substring-before(name/short,'[')"/>
							<xsl:variable name="description" select="substring-after(name/short,'[')"/>
							<xsl:value-of select="$name"/>
							<xsl:if test="string-length($name) = 0">
								<xsl:value-of select="name/short"/>
							</xsl:if>
							<xsl:if test="string-length($description) &gt; 0">
								<fo:block font-size="6pt"><xsl:text>[</xsl:text><xsl:value-of select="$description"/></fo:block>
							</xsl:if>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title">
						<fo:block font-size="6pt">Current Hand</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title">
						<fo:block font-size="6pt">Type</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title">
						<fo:block font-size="6pt">Size</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title">
						<fo:block  font-size="6pt">Critical</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-page="always">
					<!-- Hand, Type, Size and Crit -->
					<fo:table-cell xsl:use-attribute-sets="weapon">
						<xsl:choose>
							<xsl:when test="hand='Off-hand' and contains(category,'Natural')">
								<fo:block font-size="7pt">Secondary</fo:block>
							</xsl:when>
							<xsl:otherwise>
								<fo:block font-size="7pt"><xsl:value-of select="hand"/></fo:block>
							</xsl:otherwise>
						</xsl:choose>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon">
						<fo:block font-size="7pt"><xsl:value-of select="type"/></fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon">
						<fo:block font-size="7pt"><xsl:value-of select="size"/></fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight">
						<fo:block font-size="7pt">
							<xsl:value-of select="critical/range"/>
							<xsl:text>/x</xsl:text>
							<xsl:value-of select="critical/multiplier"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		</fo:block>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - weapons - special properties
====================================
====================================-->
	<xsl:template match="common" mode="special_properties">
		<xsl:param name="column_width" select="'wide'"/>
		<fo:block keep-with-previous.within-page="always" keep-together.within-column="always">
		<fo:table table-layout="fixed" width="100%">
			<xsl:choose>
				<xsl:when test="$column_width='wide'"> <!-- 102mm -->
					<fo:table-column column-width="21mm"/>
					<fo:table-column column-width="81mm"/>
				</xsl:when>
				<xsl:otherwise> <!-- 94mm -->
					<fo:table-column column-width="21mm"/>
					<fo:table-column column-width="73mm"/>
				</xsl:otherwise>
			</xsl:choose>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt" font-weight="bold">Special Properties</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon"><fo:block font-size="6pt" space-before="1pt"><xsl:value-of select="special_properties"/></fo:block></fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		</fo:block>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - weapons - charges
====================================
====================================-->
	<xsl:template match="common" mode="charges">
		<xsl:param name="column_width" select="'wide'"/>
		<xsl:if test="charges &gt; 0">
		<fo:block keep-with-previous.within-page="always" keep-together.within-column="always">
		<fo:table table-layout="fixed" width="100%">
			<xsl:choose>
				<xsl:when test="$column_width='wide'"> <!-- 102mm -->
					<fo:table-column column-width="21mm"/>
					<fo:table-column column-width="81mm"/>
				</xsl:when>
				<xsl:otherwise> <!-- 94mm -->
					<fo:table-column column-width="21mm"/>
					<fo:table-column column-width="73mm"/>
				</xsl:otherwise>
			</xsl:choose>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt" font-weight="bold">Charges</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon">
						<fo:block font-size="7pt" font-family="ZapfDingbats" space-before="1pt">
							<xsl:call-template name="for.loop">
								<xsl:with-param name="count" select="charges"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		</fo:block>
		</xsl:if>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - weapons - simple
====================================
====================================-->
	<xsl:template match="simple">
		<xsl:param name="column_width" select="'wide'" />
		<xsl:call-template name="simple_weapon">
			<xsl:with-param name="to_hit" select="to_hit"/>
			<xsl:with-param name="damage" select="damage"/>
			<xsl:with-param name="column_width" select="$column_width"/>
		</xsl:call-template>
	</xsl:template>


	<xsl:template name="simple_weapon">
		<xsl:param name="to_hit" select="''" />
		<xsl:param name="damage" select="''" />
		<xsl:param name="column_width" select="'wide'"/>
		<fo:block keep-with-previous.within-page="always" keep-together.within-column="always">
		<fo:table table-layout="fixed" width="100%">
			<xsl:choose>
				<xsl:when test="$column_width='wide'"> <!-- 102mm -->
					<fo:table-column column-width="50mm"/>
					<fo:table-column column-width="52mm"/>
				</xsl:when>
				<xsl:otherwise> <!-- 94mm -->
					<fo:table-column column-width="47mm"/>
					<fo:table-column column-width="47mm"/>
				</xsl:otherwise>
			</xsl:choose>
			<fo:table-body>
				<fo:table-row keep-with-next.within-page="always">
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt">Total Attack Bonus</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt">Damage</fo:block></fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-page="always">
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="8pt"><xsl:value-of select="$to_hit"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="8pt"><xsl:value-of select="$damage"/></fo:block></fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		</fo:block>
	</xsl:template>




<!--
====================================
====================================
	TEMPLATE - weapons - melee
====================================
====================================-->
	<xsl:template match="melee">
		<xsl:param name="column_width" select="'wide'"/>

		<fo:block keep-with-previous.within-page="always" keep-together.within-column="always">
		<fo:table table-layout="fixed" width="100%">
			<xsl:choose>
				<xsl:when test="$column_width='wide'">
					<fo:table-column column-width="8mm"/>
					<fo:table-column column-width="29mm"/>
					<fo:table-column column-width="13mm"/>
					<fo:table-column column-width="11mm"/>
					<fo:table-column column-width="28mm"/>
					<fo:table-column column-width="13mm"/>
				</xsl:when>
				<xsl:otherwise>
					<fo:table-column column-width="8mm"/>
					<fo:table-column column-width="26mm"/>
					<fo:table-column column-width="12mm"/>
					<fo:table-column column-width="11mm"/>
					<fo:table-column column-width="25mm"/>
					<fo:table-column column-width="12mm"/>
				</xsl:otherwise>
			</xsl:choose>
			<fo:table-body>
				<fo:table-row keep-with-next.within-page="always">
					<!-- To hit and Damage titles -->
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block/></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt" font-weight="bold" space-before="1pt">To Hit</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt" font-weight="bold" space-before="1pt">Damage</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block/></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt" font-weight="bold" space-before="1pt">To Hit</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt" font-weight="bold" space-before="1pt">Damage</fo:block></fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-page="always">
					<!-- 1HP, 2WP-OH -->
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="5pt" font-weight="bold" space-before="1pt">1H-P</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt"  space-before="1pt"><xsl:value-of select="w1_h1_p/to_hit"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w1_h1_p/damage"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="5pt" font-weight="bold" space-before="1pt">2W-P-(OH)</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w2_p_oh/to_hit"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w2_p_oh/damage"/></fo:block></fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-page="always">
					<!-- 1HO, 2WPOL -->
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="5pt" font-weight="bold" space-before="1pt">1H-O</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w1_h1_o/to_hit"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w1_h1_o/damage"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="5pt" font-weight="bold" space-before="1pt">2W-P-(OL)</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w2_p_ol/to_hit"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w2_p_ol/damage"/></fo:block></fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-page="always">
					<!-- 2H, OH -->
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="5pt" font-weight="bold" space-before="1pt">2H</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w1_h2/to_hit"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w1_h2/damage"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block  font-size="5pt" font-weight="bold" space-before="1pt">2W-OH</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w2_o/to_hit"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="weapon.hilight"><fo:block font-size="7pt" space-before="1pt"><xsl:value-of select="w2_o/damage"/></fo:block></fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		</fo:block>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - weapons ranged
====================================
====================================-->
	<xsl:template match="ranges">
		<xsl:param name="column_width" select="'wide'"/>

		<fo:block keep-with-previous.within-page="always" keep-together.within-column="always">
		<fo:table table-layout="fixed" width="100%">
			<xsl:choose>
				<xsl:when test="$column_width='wide'">
					<fo:table-column column-width="7mm"/>
					<fo:table-column column-width="19mm"/>
					<fo:table-column column-width="19mm"/>
					<fo:table-column column-width="19mm"/>
					<fo:table-column column-width="19mm"/>
					<fo:table-column column-width="19mm"/>
				</xsl:when>
				<xsl:otherwise>
					<fo:table-column column-width="7mm"/>
					<fo:table-column column-width="18mm"/>
					<fo:table-column column-width="18mm"/>
					<fo:table-column column-width="17mm"/>
					<fo:table-column column-width="17mm"/>
					<fo:table-column column-width="17mm"/>
				</xsl:otherwise>
			</xsl:choose>
			<fo:table-body>

				<xsl:if test="./ammunition">
					<fo:table-row keep-with-next.within-page="always">
						<fo:table-cell xsl:use-attribute-sets="weapon.title" number-columns-spanned="6">
							<fo:block font-size="5pt" font-weight="bold">Ammunition: <xsl:value-of select="ammunition/name"/>
								<xsl:if test="string(./ammunition/special_properties) != ''">
									(<xsl:value-of select="./ammunition/special_properties"/>)
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>

				<fo:table-row keep-with-next.within-page="always">
					<!-- Distances -->
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block/></fo:table-cell>
					<xsl:for-each select="range[position() &lt; 6]">
						<fo:table-cell xsl:use-attribute-sets="weapon.title">
							<fo:block font-size="5pt" font-weight="bold" >
								<xsl:value-of select="distance"/>
							</fo:block>
						</fo:table-cell>
					</xsl:for-each>
				</fo:table-row>
				<fo:table-row keep-with-next.within-page="always">
					<!-- Range To-Hits -->
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt" font-weight="bold">To Hit</fo:block></fo:table-cell>
					<xsl:for-each select="range[position() &lt; 6]">
						<fo:table-cell xsl:use-attribute-sets="weapon.hilight">
							<fo:block font-size="7pt" space-before="1pt">
								<xsl:value-of select="to_hit"/>
							</fo:block>
						</fo:table-cell>
					</xsl:for-each>
				</fo:table-row>
				<fo:table-row keep-with-next.within-page="always">
					<!-- Damages -->
					<fo:table-cell xsl:use-attribute-sets="weapon.title"><fo:block font-size="6pt" font-weight="bold">Dmg</fo:block></fo:table-cell>
					<xsl:for-each select="range[position() &lt; 6]">
						<fo:table-cell xsl:use-attribute-sets="weapon.hilight">
							<fo:block font-size="7pt" space-before="1pt">
								<xsl:value-of select="damage"/>
							</fo:block>
						</fo:table-cell>
					</xsl:for-each>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		</fo:block>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - Protection
====================================
====================================-->
	<xsl:template match="protection">
	<!-- BEGIN Armor table -->
		<fo:block keep-with-previous.within-page="always" keep-together.within-column="always">
		<fo:table table-layout="fixed" width="100%" space-before="2mm">
			<fo:table-column column-width="55mm"/>
			<fo:table-column column-width="12mm"/>
			<fo:table-column column-width="6mm"/>
			<fo:table-column column-width="8mm"/>
			<fo:table-column column-width="6mm"/>
			<fo:table-column column-width="15mm"/>
			<fo:table-header>
				<fo:table-row keep-with-previous.within-page="always">
					<fo:table-cell xsl:use-attribute-sets="protection.title" padding-top="1pt">
						<fo:block font-size="7pt" font-weight="bold" text-align="left">
							Armor
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="protection.title" padding-top="3pt">
						<fo:block font-size="4pt">
							TYPE
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="protection.title"  padding-top="3pt">
						<fo:block font-size="4pt">
							AC
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="protection.title" padding-top="3pt">
						<fo:block font-size="4pt">
							MAXDEX
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="protection.title"  padding-top="3pt">
						<fo:block font-size="4pt">
							CHECK
						</fo:block>
					</fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="protection.title"  padding-top="3pt">
						<fo:block font-size="4pt">
							SPELL FAILURE
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-header>
			<fo:table-body>
				<xsl:for-each select="armor|shield|item">
					<xsl:if test="starts-with(name,'*')">
					<xsl:variable name="content">
						<fo:table-cell text-align="left"><fo:block font-size="8pt"><xsl:value-of select="substring(name,2)"/></fo:block></fo:table-cell>
						<fo:table-cell text-align="center"><fo:block font-size="8pt"><xsl:value-of select="type"/></fo:block></fo:table-cell>
						<fo:table-cell text-align="center"><fo:block font-size="8pt"><xsl:value-of select="totalac"/></fo:block></fo:table-cell>
						<fo:table-cell text-align="center"><fo:block font-size="8pt"><xsl:value-of select="maxdex"/></fo:block></fo:table-cell>
						<fo:table-cell text-align="center"><fo:block font-size="8pt"><xsl:value-of select="accheck"/></fo:block></fo:table-cell>
						<fo:table-cell text-align="center"><fo:block font-size="8pt"><xsl:value-of select="spellfail"/></fo:block></fo:table-cell>
					</xsl:variable>
					<xsl:variable name="special">
						<fo:table-cell number-columns-spanned="6" text-align="left"><fo:block font-size="6pt"><xsl:value-of select="special_properties"/></fo:block></fo:table-cell>
					</xsl:variable>
					<xsl:if test="position() mod 2 = 0">
						<xsl:call-template name="protection.item.darkline">
							<xsl:with-param name="content" select="$content"/>
							<xsl:with-param name="special" select="$special"/>
						</xsl:call-template>
					</xsl:if>
					<xsl:if test="position() mod 2 = 1">
						<xsl:call-template name="protection.item.lightline">
							<xsl:with-param name="content" select="$content"/>
							<xsl:with-param name="special" select="$special"/>
						</xsl:call-template>
					</xsl:if>
					</xsl:if>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="protection.item.darkline">
		<xsl:param name="content"/>
		<xsl:param name="special"/>
		<fo:table-row xsl:use-attribute-sets="protection.darkline" keep-with-previous.within-page="always">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
		<fo:table-row xsl:use-attribute-sets="protection.darkline" keep-with-previous.within-page="always">
			<xsl:copy-of select="$special"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template name="protection.item.lightline">
		<xsl:param name="content"/>
		<xsl:param name="special"/>
		<fo:table-row xsl:use-attribute-sets="protection.lightline" keep-with-previous.within-page="always">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
		<fo:table-row xsl:use-attribute-sets="protection.lightline" keep-with-previous.within-page="always">
			<xsl:copy-of select="$special"/>
		</fo:table-row>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - RAGE
====================================
====================================-->
	<xsl:template match="rage">
		<!-- BEGIN Rage table -->
		<fo:table table-layout="fixed" width="100%" space-before="2mm" keep-together="always" border-collapse="collapse" >
			<fo:table-column column-width="23mm"/>
			<fo:table-column column-width="63mm"/>
			<fo:table-body>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="rage.title" padding-top="1pt" number-columns-spanned="2">
						<fo:block font-size="10pt" font-weight="bold">
							Barbarian Rage
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="rage.title"  text-align="end">
						<fo:block font-size="8pt" text-align="center">
							<xsl:with-param name="count" select="uses_per_day.title"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-left="9pt" xsl:use-attribute-sets="rage" >
						<fo:block font-size="9pt" font-family="ZapfDingbats">
							<xsl:call-template name="for.loop">
								<xsl:with-param name="count" select="uses_per_day"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<xsl:for-each select="ability_object">
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell padding="3pt" xsl:use-attribute-sets="rage"  number-columns-spanned="2">
						<fo:block font-size="5pt" font-weight="bold"><xsl:value-of select="name"/>:
							<fo:inline font-size="5pt" font-weight="normal"><xsl:value-of select="description"/><xsl:if test="source != ''"> [<xsl:value-of select="source"/>]</xsl:if></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
<!-- 		|%| -->
		<!-- END Rage table -->
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - WILDSHAPE
====================================
====================================-->
	<xsl:template match="wildshape">
		<!-- BEGIN Wildshape table -->
		<fo:table table-layout="fixed" width="100%" space-before="2mm" keep-together="always" border-collapse="collapse">
			<fo:table-column column-width="23mm"/>
			<fo:table-column column-width="63mm"/>
			<fo:table-body>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="wildshape.title" padding-top="1pt" number-columns-spanned="2">
						<fo:block font-size="10pt" font-weight="bold">
							Druid Wildshape
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="wildshape.title"  text-align="end">
						<fo:block font-size="8pt">Uses per day </fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-left="9pt" xsl:use-attribute-sets="wildshape">
						<fo:block font-size="9pt" font-family="ZapfDingbats">
							<xsl:call-template name="for.loop">
								<xsl:with-param name="count" select="uses_per_day"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<!-- END Wildshape table -->
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - CHANNEL ENERGY
====================================
====================================-->
	<xsl:template match="channel_energy">
		<!-- BEGIN Channel Energy table -->
		<fo:table table-layout="fixed" width="100%" space-before="2mm" keep-together="always" border-collapse="collapse" >
			<fo:table-column column-width="23mm"/>
			<fo:table-column column-width="63mm"/>
			<fo:table-body>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="channel_energy.title" padding-top="1pt" number-columns-spanned="2">
						<fo:block font-size="10pt" font-weight="bold">
							Channel Energy
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="channel_energy.title">
						<fo:block font-size="8pt">Uses per day </fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-left="9pt" xsl:use-attribute-sets="channel_energy">
						<fo:block font-size="9pt" font-family="ZapfDingbats">
							<xsl:call-template name="for.loop">
								<xsl:with-param name="count" select="uses_per_day"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<xsl:for-each select="ability_object">
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell padding="3pt" xsl:use-attribute-sets="channel_energy"  number-columns-spanned="2">
						<fo:block font-size="5pt" font-weight="bold"><xsl:value-of select="name"/>:
							<fo:inline font-size="5pt" font-weight="normal"><xsl:value-of select="description"/><xsl:if test="source != ''"> [<xsl:value-of select="source"/>]</xsl:if></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
<!-- 		|%| -->
		<!-- END Channel Energy table -->
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - PERFORM
====================================
====================================-->
	<xsl:template match="bardic_music">
		<!-- BEGIN Perform table -->
		<fo:table table-layout="fixed" width="100%" space-before="2mm" keep-together="always">
			<fo:table-column column-width="23mm"/>
			<fo:table-column column-width="63mm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="bard.title" padding-top="1pt" number-columns-spanned="2">
						<fo:block font-size="10pt" font-weight="bold">
							Bardic Performance
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="bard.title" padding-top="1pt" text-align="end">
						<fo:block font-size="8pt">Rounds per day </fo:block>
					</fo:table-cell>
					<fo:table-cell  xsl:use-attribute-sets="bard" padding-top="1pt" padding-left="3pt">
						<fo:block font-size="9pt" font-family="ZapfDingbats">
							<xsl:call-template name="for.loop">
								<xsl:with-param name="count" select="uses_per_day"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<!-- END Perform table -->
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - Stunning Fist
====================================
====================================-->
	<xsl:template match="stunning_fist">
		<!-- BEGIN Stunning Fist Table -->
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="23mm"/>
			<fo:table-column column-width="63mm"/>
			<fo:table-body>
				<fo:table-row height="5mm"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="stunningfist.title" padding-top="1pt"  number-columns-spanned="2">
						<fo:block font-size="10pt" font-weight="bold">
							Stunning Fist
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="stunningfist.title">
						<fo:block font-size="8pt">DC<xsl:value-of select="save_dc"/></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-left="9pt" xsl:use-attribute-sets="stunningfist">
						<fo:block font-size="9pt" font-family="ZapfDingbats" >
							<xsl:call-template name="for.loop">
								<xsl:with-param name="count" select="uses_per_day"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<!-- END Stunning Fist Table -->
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - LAY ON HANDS
====================================
====================================-->
	<xsl:template match="layonhands">
		<!-- BEGIN LAY ON HANDS table -->
		<fo:table table-layout="fixed" width="100%" space-before="2mm" keep-together="always" border-collapse="collapse" >
			<fo:table-column column-width="23mm"/>
			<fo:table-column column-width="63mm"/>
			<fo:table-body>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="layonhands.title" padding-top="1pt" number-columns-spanned="2">
						<fo:block font-size="10pt" font-weight="bold">
							Lay on Hands
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="layonhands.title">
						<fo:block font-size="8pt">Uses per day </fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-left="9pt" xsl:use-attribute-sets="layonhands">
						<fo:block font-size="9pt" font-family="ZapfDingbats">
							<xsl:call-template name="for.loop">
								<xsl:with-param name="count" select="uses_per_day"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<xsl:for-each select="ability_object">
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell padding="3pt" xsl:use-attribute-sets="layonhands"  number-columns-spanned="2">
						<fo:block font-size="5pt" font-weight="bold"><xsl:value-of select="name"/>:
							<fo:inline font-size="5pt" font-weight="normal"><xsl:value-of select="description"/><xsl:if test="source != ''"> [<xsl:value-of select="source"/>]</xsl:if></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
<!-- 		|%| -->
		<!-- END LAY ON HANDS table -->
	</xsl:template>

<!--
====================================
====================================
	TEMPLATE - CHECKLISTS
====================================
====================================-->
	<xsl:template match="checklists">
	<xsl:for-each select="checklist">
		<!-- BEGIN Use Per Day Ability table -->
		<fo:table table-layout="fixed" width="100%" space-before="2mm" border-collapse="collapse">
			<fo:table-column column-width="26mm"/>
			<fo:table-column column-width="60mm"/>
			<fo:table-body>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="rage.title" padding-top="1pt" padding-left="3pt" number-columns-spanned="2">
						<fo:block font-size="10pt" font-weight="bold">
							<xsl:value-of select="header"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell padding-top="1pt" padding-right="3pt" xsl:use-attribute-sets="rage.title" text-align="end">
						<fo:block font-size="8pt"><xsl:value-of select="check_type"/></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-left="6pt" xsl:use-attribute-sets="rage" >
						<fo:block font-size="9pt" font-family="ZapfDingbats">
							<xsl:call-template name="for.loop">
								<xsl:with-param name="count" select="check_count"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<xsl:if test="description != ''">
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell padding="3pt" xsl:use-attribute-sets="rage" number-columns-spanned="2">
							<fo:block font-size="5pt" text-align="justify">
								<fo:inline font-weight="bold"><xsl:if test="name != ''"> <xsl:value-of select="name"/>: </xsl:if></fo:inline>
								<fo:inline font-size="5pt" font-weight="normal"><xsl:value-of select="description"/><xsl:if test="source != ''"> [<xsl:value-of select="source"/>]</xsl:if></fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
 				</xsl:if>
				<xsl:for-each select="subability">
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell padding="3pt" xsl:use-attribute-sets="rage"  number-columns-spanned="2">
						<fo:block font-size="5pt" text-align="justify">
								<fo:inline font-weight="bold"><xsl:if test="name != ''"> <xsl:value-of select="name"/>: </xsl:if></fo:inline>
								<fo:inline font-size="5pt" font-weight="normal"><xsl:value-of select="description"/><xsl:if test="source != ''"> [<xsl:value-of select="source"/>]</xsl:if></fo:inline>
						</fo:block>
						<xsl:if test="check_count &gt; 0">
							<fo:block font-size="5pt">
								<fo:inline font-weight="bold"><xsl:value-of select="check_type"/>: </fo:inline>
								<fo:inline font-family="ZapfDingbats" font-size="6pt">
									<xsl:call-template name="for.loop">
										<xsl:with-param name="count" select="check_count"/>
									</xsl:call-template>
								</fo:inline>
							</fo:block>
						</xsl:if>
					</fo:table-cell>
				</fo:table-row>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
<!-- 		|%| -->
		<!-- END Checklists table -->
	</xsl:for-each>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - DOMAINS
====================================
====================================-->
	<xsl:template match="domains">
		<!-- BEGIN Domains Table -->
		<fo:table table-layout="fixed" width="100%" space-before.optimum="2mm">
			<fo:table-column column-width="55mm"/>
			<fo:table-column column-width="39mm"/>
			<fo:table-body>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="domains.title" padding-top="1pt" number-columns-spanned="2">
						<fo:block font-size="10pt" font-weight="bold">
							Domains
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<xsl:for-each select="domain">
					<xsl:call-template name="abilities">
						<xsl:with-param name="name" select="name"/>
						<xsl:with-param name="source" select="source"/>
						<xsl:with-param name="description" select="description"/>
						<xsl:with-param name="position" select="position()"/>
					</xsl:call-template>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
		<!-- END Domains Table -->
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - WEAPON PROFICIENCIES
====================================
====================================-->
	<xsl:template match="weapon_proficiencies">
		<!-- BEGIN weapon_proficiencies Table -->
		<fo:table table-layout="fixed" width="100%" space-before.optimum="2mm">
			<fo:table-column column-width="94mm"/>
			<fo:table-body>
			<fo:table-row keep-with-next.within-column="always">
				<fo:table-cell xsl:use-attribute-sets="proficiencies.title" padding-top="1pt">
					<fo:block font-size="9pt" font-weight="bold">
						Proficiencies
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
			<fo:table-row keep-with-next.within-column="always">
				<fo:table-cell xsl:use-attribute-sets="proficiencies" padding-left="1pt" padding-top="1pt">
					<fo:block font-size="7pt"><xsl:value-of select="."/></fo:block>
				</fo:table-cell>
			</fo:table-row>
			</fo:table-body>
		</fo:table>
		<!-- END weapon_proficiencies Table -->
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - LANGUAGES
====================================
====================================-->
	<xsl:template match="languages">
		<xsl:if test=". != ''">
			<!-- BEGIN Languages Table -->
			<fo:table table-layout="fixed" width="100%" space-before.optimum="2mm">
				<fo:table-column column-width="94mm"/>
				<fo:table-body>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="languages.title" padding-top="1pt">
						<fo:block font-size="10pt" font-weight="bold">
							Languages
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="languages" padding-left="1pt" padding-top="1pt">
						<fo:block font-size="7pt"><xsl:value-of select="."/></fo:block>
					</fo:table-cell>
				</fo:table-row>
				</fo:table-body>
			</fo:table>
			<!-- END Languages Table -->
		</xsl:if>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - TEMPLATES
====================================
====================================-->
	<xsl:template match="templates">
		<xsl:if test="list != ''">
			<!-- BEGIN Templates Table -->
			<fo:table table-layout="fixed" width="100%" space-before.optimum="2mm">
				<fo:table-column column-width="94mm"/>
				<fo:table-body>
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell xsl:use-attribute-sets="templates.title" padding-top="1pt">
							<fo:block font-size="9pt" font-weight="bold">
								Templates
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="template">
						<xsl:variable name="content">
							<fo:table-cell padding="1pt">
								<fo:block font-size="7pt"><xsl:value-of select="name"/></fo:block>
							</fo:table-cell>
						</xsl:variable>
						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="templates.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="templates.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
			<!-- END Templates Table -->
		</xsl:if>
	</xsl:template>

	<xsl:template name="templates.darkline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="templates.darkline">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template name="templates.lightline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="templates.lightline">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - PROHIBITED
====================================
====================================-->
	<xsl:template match="opposition_schools">
		<!-- BEGIN Prohibited Table -->
		<fo:table table-layout="fixed" width="100%" space-before.optimum="2mm">
			<fo:table-column column-width="94mm"/>
			<fo:table-body>
			<fo:table-row keep-with-next.within-column="always">
				<fo:table-cell xsl:use-attribute-sets="opposition.title" padding-top="1pt">
					<fo:block font-size="10pt" font-weight="bold">
						Opposition Schools
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
			<fo:table-row keep-with-next.within-column="always">
				<fo:table-cell xsl:use-attribute-sets="opposition" padding-top="1pt">
					<fo:block font-size="7pt"><xsl:value-of select="."/></fo:block>
				</fo:table-cell>
			</fo:table-row>
			</fo:table-body>
		</fo:table>
		<!-- END Prohibited Table -->
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - COMPANIONS
====================================
====================================-->
	<xsl:template match="companions">
		<!-- BEGIN Companions Table -->
		<xsl:apply-templates select="familiar"/>
		<xsl:apply-templates select="mount"/>
		<xsl:apply-templates select="companion"/>
		<xsl:call-template name="followers.list"/>
		<!-- END Companions Table -->
	</xsl:template>

	<xsl:template match="familiar">
		<!-- BEGIN Familiar Table -->
		<xsl:call-template name="show_companion">
			<xsl:with-param name="followerType" select="'Familiar'"/>
		</xsl:call-template>
		<!-- END Familiar Table -->
	</xsl:template>

	<xsl:template match="mount">
		<!-- BEGIN Familiar Table -->
		<xsl:call-template name="show_companion">
			<xsl:with-param name="followerType" select="'Special Mount'"/>
		</xsl:call-template>
		<!-- END Familiar Table -->
	</xsl:template>

	<xsl:template match="companion">
		<!-- BEGIN Familiar Table -->
		<xsl:call-template name="show_companion">
			<xsl:with-param name="followerType" select="'Animal Companion'"/>
		</xsl:call-template>
		<!-- END Familiar Table -->
	</xsl:template>

	<xsl:template name="followers.list">
		<xsl:if test="count(follower) &gt; 0">
			<fo:table table-layout="fixed" width="100%" space-after.optimum="2mm">
				<fo:table-column column-width="94mm"/>
				<fo:table-body>
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell xsl:use-attribute-sets="companions.title" >
							<fo:block font-size="10pt" font-weight="bold">Followers: </fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell xsl:use-attribute-sets="companions" >
							<xsl:for-each select="follower">
								<fo:block font-size="8pt"><xsl:value-of select="name"/></fo:block>
							</xsl:for-each>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>

	<xsl:template name="show_companion">
		<xsl:param name="followerType" select="Follower"/>
		<fo:table table-layout="fixed" width="100%" space-before.optimum="2mm">
			<fo:table-column column-width="25mm"/>
			<fo:table-column column-width="15mm"/>
			<fo:table-column column-width="13mm"/>
			<fo:table-column column-width="14mm"/>
			<fo:table-column column-width="13mm"/>
			<fo:table-column column-width="14mm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell number-columns-spanned="6" xsl:use-attribute-sets="companions.title">
						<fo:block font-size="10pt" font-weight="bold"><xsl:value-of select="$followerType"/>: <xsl:value-of select="name"/> (<xsl:value-of select="race"/>)</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block font-size="8pt">HP:</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions" text-align="middle"><fo:block font-size="8pt"><xsl:value-of select="hp"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block  font-size="8pt">AC:</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions" text-align="middle"><fo:block font-size="8pt"><xsl:value-of select="ac"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block  font-size="8pt">Init:</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions" text-align="middle"><fo:block font-size="8pt"><xsl:value-of select="initiative_mod"/></fo:block></fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block  font-size="8pt">Fort:</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions" text-align="middle"><fo:block font-size="8pt"><xsl:value-of select="fortitude"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block  font-size="8pt">Ref:</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions" text-align="middle"><fo:block font-size="8pt"><xsl:value-of select="reflex"/></fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block  font-size="8pt">Will:</fo:block></fo:table-cell>
					<fo:table-cell xsl:use-attribute-sets="companions" text-align="middle"><fo:block font-size="8pt"><xsl:value-of select="Will"/></fo:block></fo:table-cell>
				</fo:table-row>
				<xsl:for-each select="attacks/attack">
					<xsl:if test="string-length(common/name/long) &gt; 0">
						<fo:table-row keep-with-next.within-column="always">
							<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end">
								<fo:block font-size="8pt">
									<xsl:variable name="name" select="substring-before(common/name/long,'(')"/>
									<xsl:variable name="description" select="substring-after(common/name/long,'(')"/>
									<xsl:value-of select="$name"/>
									<xsl:if test="string-length($name) = 0">
										<xsl:value-of select="common/name/long"/>
									</xsl:if>
									<xsl:if test="string-length($description) &gt; 0">
										<fo:inline font-size="5pt">
											<xsl:text>(</xsl:text><xsl:value-of select="$description"/>
										</fo:inline>
									</xsl:if>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell xsl:use-attribute-sets="companions" text-align="middle"><fo:block font-size="8pt"><xsl:value-of select="simple/to_hit"/></fo:block></fo:table-cell>
							<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block font-size="8pt">Dmg:</fo:block></fo:table-cell>
							<fo:table-cell xsl:use-attribute-sets="companions" text-align="middle"><fo:block font-size="8pt"><xsl:value-of select="simple/damage"/></fo:block></fo:table-cell>
							<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block font-size="8pt">Crit:</fo:block></fo:table-cell>
							<fo:table-cell xsl:use-attribute-sets="companions" text-align="middle"><fo:block font-size="8pt"><xsl:value-of select="common/critical/range"/>/x<xsl:value-of select="common/critical/multiplier"/></fo:block></fo:table-cell>
						</fo:table-row>
					</xsl:if>
				</xsl:for-each>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="companions.title" text-align="end"><fo:block font-size="8pt">Special:</fo:block></fo:table-cell>
					<fo:table-cell number-columns-spanned="5" xsl:use-attribute-sets="companions.title"><fo:block font-size="7pt"><xsl:value-of select="special_properties"/></fo:block></fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - Equipment
====================================
====================================-->
	<xsl:template match="equipment">
		<!--
			BEGIN Equipment/Weapons table
		-->
		<xsl:if test="count(item[contains(type, 'WEAPON') and contains(type, 'TEMPORARY')=false and contains(type, 'NATURAL')=false and contains(type, 'SHIELD')=false and location!='']) &gt; 0">
		<fo:block>
			<fo:table table-layout="fixed" width="100%" space-before.optimum="2mm">
				<fo:table-column column-width="51mm"/>
				<fo:table-column column-width="19mm"/>
				<fo:table-column column-width="6mm"/>
				<fo:table-column column-width="8mm"/>
				<fo:table-column column-width="10mm"/>
				<fo:table-header>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="equipment.title" padding-top="1pt" number-columns-spanned="5">
							<fo:block font-size="10pt" font-weight="bold">
								Weapons
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row xsl:use-attribute-sets="equipment.title">
						<fo:table-cell text-align="left" padding-left="1pt" padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Item</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Location</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Qty.</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt" font-weight="bold">Wt.</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt" font-weight="bold">Cost</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-header>
				<fo:table-body>
					<xsl:for-each select="item[contains(type, 'WEAPON') and contains(type, 'TEMPORARY')=false and contains(type, 'NATURAL')=false and contains(type, 'SHIELD')=false and location!='']">
					<xsl:sort select="name"/>
						<xsl:variable name="content">
							<fo:table-cell>
								<fo:block space-before.optimum="1pt" font-size="8pt">
									<xsl:if test="contains(type, 'ENHANCEMENT') or contains(type, 'MAGIC') or contains(type, 'PSIONIC')">
										<xsl:attribute name="font-weight">bold</xsl:attribute>
									</xsl:if>
									<xsl:if test="note='GT'">
										<fo:inline font-family="ZapfDingbats" font-weight="normal">&#x2729; </fo:inline>
									</xsl:if>
									<xsl:if test="note='L'">
										<fo:inline font-family="ZapfDingbats" font-weight="normal">&#x272D; </fo:inline>
									</xsl:if>
									<xsl:value-of select="name"/>
								</fo:block>

								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="contents"/>
								</fo:block>
								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="special_properties"/>
								</fo:block>
								<xsl:if test="note != '' and note != 'GT' and note != 'L'">
									<fo:block space-before.optimum="1pt" font-size="5pt">
										<xsl:value-of select="note"/>
									</fo:block>
								</xsl:if>
								<!-- Display consumables as a series of checkboxes -->
								<xsl:if test="contains(type, 'CONSUMABLE')">
									<fo:block font-size="7pt" font-family="ZapfDingbats">
										<xsl:call-template name="for.loop">
											<xsl:with-param name="count" select="quantity"/>
										</xsl:call-template>
									</fo:block>
								</xsl:if>
								<!-- Display the number of charges left if any -->
								<!--<xsl:if test="charges &gt; 0">
									<fo:block font-size="7pt" font-family="ZapfDingbats">
										<xsl:call-template name="for.loop">
											<xsl:with-param name="count" select="charges"/>
										</xsl:call-template>
									</fo:block>
								</xsl:if>-->
							</fo:table-cell>
							<fo:table-cell text-align="center">
								<fo:block space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="location"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="quantity"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="format-number(weight, '####0.##')"/>
									<xsl:if test="quantity &gt; 1">
										(<xsl:value-of select="format-number(weight * quantity, '####0.##')"/>)
									</xsl:if>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="format-number(cost, '####0.##')"/>
									<xsl:if test="quantity &gt; 1">
										(<xsl:value-of select="format-number(cost * quantity, '####0.##')"/>)
									</xsl:if>
								</fo:block>
							</fo:table-cell>
						</xsl:variable>

						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="equipment.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="equipment.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
    </xsl:if>
		<!--
			END Equipment/Weapons table
			BEGIN Equipment/Ammunition table
		-->
		<xsl:if test="count(item[contains(type, 'AMMUNITION') and contains(type, 'TEMPORARY')=false and location!='']) &gt; 0">
		<fo:block>
			<fo:table table-layout="fixed" width="100%" space-before.optimum="2mm">
				<fo:table-column column-width="51mm"/>
				<fo:table-column column-width="19mm"/>
				<fo:table-column column-width="6mm"/>
				<fo:table-column column-width="8mm"/>
				<fo:table-column column-width="10mm"/>
				<fo:table-header>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="equipment.title" padding-top="1pt" number-columns-spanned="5">
							<fo:block font-size="10pt" font-weight="bold">
								Ammuniton
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row xsl:use-attribute-sets="equipment.title">
						<fo:table-cell text-align="left" padding-left="1pt" padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Item</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Location</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Qty.</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt" font-weight="bold">Wt.</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt" font-weight="bold">Cost</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-header>
				<fo:table-body>
					<xsl:for-each select="item[contains(type, 'AMMUNITION') and contains(type, 'TEMPORARY')=false and location!='']">
						<xsl:sort select="name"/>
						<xsl:variable name="content">
							<fo:table-cell>
								<fo:block space-before.optimum="1pt" font-size="8pt">
									<xsl:if test="contains(type, 'ENHANCEMENT') or contains(type, 'MAGIC') or contains(type, 'PSIONIC')">
										<xsl:attribute name="font-weight">bold</xsl:attribute>
									</xsl:if>
									<xsl:if test="note='GT'">
										<fo:inline font-family="ZapfDingbats" font-weight="normal">&#x2729; </fo:inline>
									</xsl:if>
									<xsl:if test="note='L'">
										<fo:inline font-family="ZapfDingbats" font-weight="normal">&#x272D; </fo:inline>
									</xsl:if>
									<xsl:value-of select="name"/>
								</fo:block>

								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="contents"/>
								</fo:block>
								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="special_properties"/>
								</fo:block>
								<xsl:if test="note != '' and note != 'GT' and note != 'L'">
									<fo:block space-before.optimum="1pt" font-size="5pt">
										<xsl:value-of select="note"/>
									</fo:block>
								</xsl:if>

								<!-- Display the ammunition as a series of checkboxes -->
								<xsl:if test="contains(type, 'AMMUNITION')">
									<fo:block font-size="7pt" font-family="ZapfDingbats">
										<xsl:call-template name="for.loop">
											<xsl:with-param name="count" select="quantity"/>
										</xsl:call-template>
									</fo:block>
								</xsl:if>
							</fo:table-cell>
							<fo:table-cell text-align="center">
								<fo:block space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="location"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="quantity"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="format-number(weight, '####0.##')"/>
									<xsl:if test="quantity &gt; 1">
										(<xsl:value-of select="format-number(weight * quantity, '####0.##')"/>)
									</xsl:if>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="format-number(cost, '####0.##')"/>
									<xsl:if test="quantity &gt; 1">
										(<xsl:value-of select="format-number(cost * quantity, '####0.##')"/>)
									</xsl:if>
								</fo:block>
							</fo:table-cell>
						</xsl:variable>

						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="equipment.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="equipment.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
		</xsl:if>
		<!--
			END Equipment/Ammunition table
			BEGIN Equipment/Armor table
		-->
		<xsl:if test="count(item[(contains(type, 'ARMOR') or contains(type, 'SHIELD')) and contains(type, 'TEMPORARY')=false and location!='']) &gt; 0">
		<fo:block>
			<fo:table table-layout="fixed" width="100%" space-before.optimum="2mm">
				<fo:table-column column-width="51mm"/>
				<fo:table-column column-width="19mm"/>
				<fo:table-column column-width="6mm"/>
				<fo:table-column column-width="8mm"/>
				<fo:table-column column-width="10mm"/>
				<fo:table-header>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="equipment.title" padding-top="1pt" number-columns-spanned="5">
							<fo:block font-size="10pt" font-weight="bold">
								Armor
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row xsl:use-attribute-sets="equipment.title">
						<fo:table-cell text-align="left" padding-left="1pt" padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Item</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Location</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Qty.</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt" font-weight="bold">Wt.</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt" font-weight="bold">Cost</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-header>
				<fo:table-body>
					<xsl:for-each select="item[(contains(type, 'ARMOR') or contains(type, 'SHIELD')) and contains(type, 'TEMPORARY')=false and location!='']">
						<xsl:sort select="name"/>
						<xsl:variable name="content">
							<fo:table-cell>
								<fo:block space-before.optimum="1pt" font-size="8pt">
									<xsl:if test="contains(type, 'ENHANCEMENT') or contains(type, 'MAGIC') or contains(type, 'PSIONIC')">
										<xsl:attribute name="font-weight">bold</xsl:attribute>
									</xsl:if>
									<xsl:if test="note='GT'">
										<fo:inline font-family="ZapfDingbats" font-weight="normal">&#x2729; </fo:inline>
									</xsl:if>
									<xsl:if test="note='L'">
										<fo:inline font-family="ZapfDingbats" font-weight="normal">&#x272D; </fo:inline>
									</xsl:if>
									<xsl:value-of select="name"/>
								</fo:block>

								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="contents"/>
								</fo:block>
								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="special_properties"/>
								</fo:block>
								<xsl:if test="note != '' and note != 'GT' and note != 'L'">
									<fo:block space-before.optimum="1pt" font-size="5pt">
										<xsl:value-of select="note"/>
									</fo:block>
								</xsl:if>
								<!-- Display the number of charges left if any -->
								<xsl:if test="charges &gt; 0">
									<fo:block font-size="7pt" font-family="ZapfDingbats">
										<xsl:call-template name="for.loop">
											<xsl:with-param name="count" select="charges"/>
										</xsl:call-template>
									</fo:block>
								</xsl:if>
							</fo:table-cell>
							<fo:table-cell text-align="center">
								<fo:block space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="location"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="quantity"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="format-number(weight, '####0.##')"/>
									<xsl:if test="quantity &gt; 1">
										(<xsl:value-of select="format-number(weight * quantity, '####0.##')"/>)
									</xsl:if>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="format-number(cost, '####0.##')"/>
									<xsl:if test="quantity &gt; 1">
										(<xsl:value-of select="format-number(cost * quantity, '####0.##')"/>)
									</xsl:if>
								</fo:block>
							</fo:table-cell>
						</xsl:variable>

						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="equipment.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="equipment.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
		</xsl:if>
		<!--
			END Equipment/Armor table
			BEGIN Equipment/Magic table
		-->
		<xsl:if test="count(item[(contains(type, 'MAGIC') or contains(type, 'PSIONIC') or contains(type, 'ARTIFACT'))
												 and contains(type, 'WEAPON')=false and contains(type, 'AMMUNITION')=false
												 and contains(type, 'ARMOR')=false and contains(type, 'SHIELD')=false
												 and contains(type, 'COIN')=false and contains(type, 'GEM')=false
												 and location!='']) &gt; 0" >
		<fo:block>
			<fo:table table-layout="fixed" width="100%" space-before.optimum="2mm">
				<fo:table-column column-width="51mm"/>
				<fo:table-column column-width="19mm"/>
				<fo:table-column column-width="6mm"/>
				<fo:table-column column-width="8mm"/>
				<fo:table-column column-width="10mm"/>
				<fo:table-header>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="equipment.title" padding-top="1pt" number-columns-spanned="5">
							<fo:block font-size="10pt" font-weight="bold">
								Magic Items
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row xsl:use-attribute-sets="equipment.title">
						<fo:table-cell text-align="left" padding-left="1pt" padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Item</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Location</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Qty.</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt" font-weight="bold">Wt.</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt" font-weight="bold">Cost</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-header>
				<fo:table-body>
					<xsl:for-each select="item[(contains(type, 'MAGIC') or contains(type, 'PSIONIC') or contains(type, 'ARTIFACT'))
																 and contains(type, 'WEAPON')=false and contains(type, 'AMMUNITION')=false
																 and contains(type, 'ARMOR')=false and contains(type, 'SHIELD')=false
																 and contains(type, 'COIN')=false and contains(type, 'GEM')=false
																 and location!='']">
						<xsl:sort select="name"/>
						<xsl:variable name="content">
							<fo:table-cell>
								<fo:block space-before.optimum="1pt" font-size="8pt">
									<xsl:attribute name="font-weight">bold</xsl:attribute>
									<xsl:if test="note='GT'">
										<fo:inline font-family="ZapfDingbats" font-weight="normal">&#x2729; </fo:inline>
									</xsl:if>
									<xsl:if test="note='L'">
										<fo:inline font-family="ZapfDingbats" font-weight="normal">&#x272D; </fo:inline>
									</xsl:if>
									<xsl:value-of select="name"/>
								</fo:block>
								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="contents"/>
								</fo:block>
								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="special_properties"/>
								</fo:block>
								<xsl:if test="note != '' and note != 'GT' and note != 'L'">
									<fo:block space-before.optimum="1pt" font-size="5pt">
										<xsl:value-of select="note"/>
									</fo:block>
								</xsl:if>

								<!-- Display consumables as a series of checkboxes -->
								<xsl:if test="contains(type, 'CONSUMABLE')">
									<fo:block font-size="7pt" font-family="ZapfDingbats">
										<xsl:call-template name="for.loop">
											<xsl:with-param name="count" select="quantity"/>
										</xsl:call-template>
									</fo:block>
								</xsl:if>
								<!-- Display the number of charges left if any -->
								<xsl:if test="charges &gt; 0">
									<fo:block font-size="7pt" font-family="ZapfDingbats">
										<xsl:call-template name="for.loop">
											<xsl:with-param name="count" select="charges"/>
										</xsl:call-template>
									</fo:block>
								</xsl:if>
							</fo:table-cell>
							<fo:table-cell text-align="center">
								<fo:block space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="location"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="quantity"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="format-number(weight, '####0.##')"/>
									<xsl:if test="quantity &gt; 1">
										(<xsl:value-of select="format-number(weight * quantity, '####0.##')"/>)
									</xsl:if>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="format-number(cost, '####0.##')"/>
									<xsl:if test="quantity &gt; 1">
										(<xsl:value-of select="format-number(cost * quantity, '####0.##')"/>)
									</xsl:if>
								</fo:block>
							</fo:table-cell>
						</xsl:variable>

						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="equipment.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="equipment.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
		</xsl:if>
		<!--
			END Equipment/Magic table
			BEGIN Equipment/Tech table
		-->
		<xsl:if test="count(item[contains(type, 'TECHNOLOGICAL GEAR') and contains(type, 'WEAPON')=false and contains(type, 'AMMUNITION')=false
												  and contains(type, 'ARMOR')=false and contains(type, 'SHIELD')=false
												  and contains(type, 'COIN')=false and contains(type, 'GEM')=false
												  and location!='']) &gt; 0" >
		<fo:block>
			<fo:table table-layout="fixed" width="100%" space-before.optimum="2mm">
				<fo:table-column column-width="51mm"/>
				<fo:table-column column-width="19mm"/>
				<fo:table-column column-width="6mm"/>
				<fo:table-column column-width="8mm"/>
				<fo:table-column column-width="10mm"/>
				<fo:table-header>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="equipment.title" padding-top="1pt" number-columns-spanned="5">
							<fo:block font-size="10pt" font-weight="bold">
								Technological Gear
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row xsl:use-attribute-sets="equipment.title">
						<fo:table-cell text-align="left" padding-left="1pt" padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Item</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Location</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Qty.</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt" font-weight="bold">Wt.</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt" font-weight="bold">Cost</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-header>
				<fo:table-body>
					<xsl:for-each select="item[contains(type, 'TECHNOLOGICAL GEAR') and contains(type, 'WEAPON')=false and contains(type, 'AMMUNITION')=false
																and contains(type, 'ARMOR')=false and contains(type, 'SHIELD')=false
																and contains(type, 'COIN')=false and contains(type, 'GEM')=false
																and location!='']">
						<xsl:sort select="name"/>
						<xsl:variable name="content">
							<fo:table-cell>
								<fo:block space-before.optimum="1pt" font-size="8pt">
									<xsl:if test="note='GT'">
										<fo:inline font-family="ZapfDingbats" font-weight="normal">&#x2729; </fo:inline>
									</xsl:if>
									<xsl:if test="note='L'">
										<fo:inline font-family="ZapfDingbats" font-weight="normal">&#x272D; </fo:inline>
									</xsl:if>
									<xsl:value-of select="name"/>
								</fo:block>
								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="contents"/>
								</fo:block>
								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="special_properties"/>
								</fo:block>
								<xsl:if test="note != '' and note != 'GT' and note != 'L'">
									<fo:block space-before.optimum="1pt" font-size="5pt">
										<xsl:value-of select="note"/>
									</fo:block>
								</xsl:if>

								<!-- Display consumables as a series of checkboxes -->
								<xsl:if test="contains(type, 'CONSUMABLE')">
									<fo:block font-size="7pt" font-family="ZapfDingbats">
										<xsl:call-template name="for.loop">
											<xsl:with-param name="count" select="quantity"/>
										</xsl:call-template>
									</fo:block>
								</xsl:if>
								<!-- Display the number of charges left if any -->
								<xsl:if test="charges &gt; 0">
									<fo:block font-size="7pt" font-family="ZapfDingbats">
										<xsl:call-template name="for.loop">
											<xsl:with-param name="count" select="charges"/>
										</xsl:call-template>
									</fo:block>
								</xsl:if>
							</fo:table-cell>
							<fo:table-cell text-align="center">
								<fo:block space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="location"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="quantity"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="format-number(weight, '####0.##')"/>
									<xsl:if test="quantity &gt; 1">
										(<xsl:value-of select="format-number(weight * quantity, '####0.##')"/>)
									</xsl:if>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="format-number(cost, '####0.##')"/>
									<xsl:if test="quantity &gt; 1">
										(<xsl:value-of select="format-number(cost * quantity, '####0.##')"/>)
									</xsl:if>
								</fo:block>
							</fo:table-cell>
						</xsl:variable>

						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="equipment.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="equipment.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
		</xsl:if>
		<!--
			END Equipment/Tech table
			BEGIN Equipment/Misc table
		-->
		<xsl:if test="count(item[contains(type, 'MAGIC')=false and contains(type, 'PSIONIC')=false and contains(type, 'ARTIFACT')=false and contains(type, 'TECHNOLOGICAL GEAR')=false
												 and contains(type, 'WEAPON')=false and contains(type, 'AMMUNITION')=false
												 and contains(type, 'ARMOR')=false and contains(type, 'SHIELD')=false
												 and contains(type, 'COIN')=false and contains(type, 'GEM')=false
												 and contains(type, 'COMPONENT')=false and location!='']) &gt; 0" >
		<fo:block>
			<fo:table table-layout="fixed" width="100%" space-before.optimum="2mm">
				<fo:table-column column-width="51mm"/>
				<fo:table-column column-width="19mm"/>
				<fo:table-column column-width="6mm"/>
				<fo:table-column column-width="8mm"/>
				<fo:table-column column-width="10mm"/>
				<fo:table-header>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="equipment.title" padding-top="1pt" number-columns-spanned="5">
							<fo:block font-size="10pt" font-weight="bold">
								Miscellaneous Equipment
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row xsl:use-attribute-sets="equipment.title">
						<fo:table-cell text-align="left" padding-left="1pt" padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Item</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Location</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Qty.</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt" font-weight="bold">Wt.</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt" font-weight="bold">Cost</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-header>
				<fo:table-body>
					<xsl:for-each select="item[contains(type, 'MAGIC')=false and contains(type, 'PSIONIC')=false and contains(type, 'ARTIFACT')=false and contains(type, 'TECHNOLOGICAL GEAR')=false
																 and contains(type, 'WEAPON')=false and contains(type, 'AMMUNITION')=false
																 and contains(type, 'ARMOR')=false and contains(type, 'SHIELD')=false
																 and contains(type, 'COIN')=false and contains(type, 'GEM')=false
																 and contains(type, 'COMPONENT')=false and location!='']">
						<xsl:sort select="name"/>
						<xsl:variable name="content">
							<fo:table-cell>
								<fo:block space-before.optimum="1pt" font-size="8pt">
									<xsl:if test="note='GT'">
										<fo:inline font-family="ZapfDingbats" font-weight="normal">&#x2729; </fo:inline>
									</xsl:if>
									<xsl:if test="note='L'">
										<fo:inline font-family="ZapfDingbats" font-weight="normal">&#x272D; </fo:inline>
									</xsl:if>
									<xsl:value-of select="name"/>
								</fo:block>
								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="contents"/>
								</fo:block>
								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="special_properties"/>
								</fo:block>
								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="note"/>
								</fo:block>

								<!-- Display consumables as a series of checkboxes -->
								<xsl:if test="contains(type, 'CONSUMABLE')">
									<fo:block font-size="7pt" font-family="ZapfDingbats">
										<xsl:call-template name="for.loop">
											<xsl:with-param name="count" select="quantity"/>
										</xsl:call-template>
									</fo:block>
								</xsl:if>
								<!-- Display the number of charges left if any -->
								<xsl:if test="charges &gt; 0">
									<fo:block font-size="7pt" font-family="ZapfDingbats">
										<xsl:call-template name="for.loop">
											<xsl:with-param name="count" select="charges"/>
										</xsl:call-template>
									</fo:block>
								</xsl:if>
							</fo:table-cell>
							<fo:table-cell text-align="center">
								<fo:block space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="location"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="quantity"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="format-number(weight, '####0.##')"/>
									<xsl:if test="quantity &gt; 1">
										(<xsl:value-of select="format-number(weight * quantity, '####0.##')"/>)
									</xsl:if>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="format-number(cost, '####0.##')"/>
									<xsl:if test="quantity &gt; 1">
										(<xsl:value-of select="format-number(cost * quantity, '####0.##')"/>)
									</xsl:if>
								</fo:block>
							</fo:table-cell>
						</xsl:variable>

						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="equipment.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="equipment.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
		</xsl:if>
		<!--
			END Equipment/Misc table
			BEGIN Equipment/Components table
		-->
		<xsl:if test="count(item[(contains(type, 'COMPONENT'))
												 and contains(type, 'WEAPON')=false and contains(type, 'AMMUNITION')=false
												 and contains(type, 'ARMOR')=false and contains(type, 'SHIELD')=false
												 and contains(type, 'COIN')=false and contains(type, 'GEM')=false
												 and location!='']) &gt; 0" >
		<fo:block>
			<fo:table table-layout="fixed" width="100%" space-before.optimum="2mm">
				<fo:table-column column-width="51mm"/>
				<fo:table-column column-width="19mm"/>
				<fo:table-column column-width="6mm"/>
				<fo:table-column column-width="8mm"/>
				<fo:table-column column-width="10mm"/>
				<fo:table-header>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="equipment.title" padding-top="1pt" number-columns-spanned="5">
							<fo:block font-size="10pt" font-weight="bold">
								Material Components
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row xsl:use-attribute-sets="equipment.title">
						<fo:table-cell text-align="left" padding-left="1pt" padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Item</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Location</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Qty.</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt" font-weight="bold">Wt.</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt" font-weight="bold">Cost</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-header>
				<fo:table-body>
					<xsl:for-each select="item[(contains(type, 'COMPONENT'))
																 and contains(type, 'WEAPON')=false and contains(type, 'AMMUNITION')=false
																 and contains(type, 'ARMOR')=false and contains(type, 'SHIELD')=false
																 and contains(type, 'COIN')=false and contains(type, 'GEM')=false
																 and location!='']">
						<xsl:sort select="name"/>
						<xsl:variable name="content">
							<fo:table-cell>
								<fo:block space-before.optimum="1pt" font-size="8pt">
									<xsl:attribute name="font-weight">bold</xsl:attribute>
									<xsl:if test="note='GT'">
										<fo:inline font-family="ZapfDingbats" font-weight="normal">&#x2729; </fo:inline>
									</xsl:if>
									<xsl:if test="note='L'">
										<fo:inline font-family="ZapfDingbats" font-weight="normal">&#x272D; </fo:inline>
									</xsl:if>
									<xsl:value-of select="name"/>
								</fo:block>
								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="contents"/>
								</fo:block>
								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="special_properties"/>
								</fo:block>
								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="note"/>
								</fo:block>

								<!-- Display consumables as a series of checkboxes -->
								<xsl:if test="contains(type, 'CONSUMABLE')">
									<fo:block font-size="7pt" font-family="ZapfDingbats">
										<xsl:call-template name="for.loop">
											<xsl:with-param name="count" select="quantity"/>
										</xsl:call-template>
									</fo:block>
								</xsl:if>
								<!-- Display the number of charges left if any -->
								<xsl:if test="charges &gt; 0">
									<fo:block font-size="7pt" font-family="ZapfDingbats">
										<xsl:call-template name="for.loop">
											<xsl:with-param name="count" select="charges"/>
										</xsl:call-template>
									</fo:block>
								</xsl:if>
							</fo:table-cell>
							<fo:table-cell text-align="center">
								<fo:block space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="location"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="quantity"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="format-number(weight, '####0.##')"/>
									<xsl:if test="quantity &gt; 1">
										(<xsl:value-of select="format-number(weight * quantity, '####0.##')"/>)
									</xsl:if>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="format-number(cost, '####0.##')"/>
									<xsl:if test="quantity &gt; 1">
										(<xsl:value-of select="format-number(cost * quantity, '####0.##')"/>)
									</xsl:if>
								</fo:block>
							</fo:table-cell>
						</xsl:variable>

						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="equipment.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="equipment.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
		</xsl:if>
		<!--
			END Equipment/Components table
			BEGIN Equipment/Unequipped table
		-->
		<xsl:if test="count(item[location='']) &gt; 0" >
		<fo:block>
			<fo:table table-layout="fixed" width="100%" space-before.optimum="2mm">
				<fo:table-column column-width="51mm"/>
				<fo:table-column column-width="19mm"/>
				<fo:table-column column-width="6mm"/>
				<fo:table-column column-width="8mm"/>
				<fo:table-column column-width="10mm"/>
				<fo:table-header>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="equipment.title" padding-top="1pt" number-columns-spanned="5">
							<fo:block font-size="10pt" font-weight="bold">
								Equipment not carried
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row xsl:use-attribute-sets="equipment.title">
						<fo:table-cell text-align="left" padding-left="1pt" padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Item</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Location</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt">
							<fo:block font-size="7pt" font-weight="bold">Qty.</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt" font-weight="bold">Wt.</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="1pt" >
							<fo:block font-size="7pt" font-weight="bold">Cost</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-header>
				<fo:table-body>
					<xsl:for-each select="item[location='']">
						<xsl:sort select="name"/>
						<xsl:variable name="content">
							<fo:table-cell>
								<fo:block space-before.optimum="1pt" font-size="8pt">
									<xsl:value-of select="name"/>
								</fo:block>
								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="contents"/>
								</fo:block>
								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="special_properties"/>
								</fo:block>
								<fo:block space-before.optimum="1pt" font-size="5pt">
									<xsl:value-of select="note"/>
								</fo:block>

								<!-- Display the number of charges left if any -->
								<xsl:if test="charges &gt; 0">
									<fo:block font-size="7pt" font-family="ZapfDingbats">
										<xsl:call-template name="for.loop">
											<xsl:with-param name="count" select="charges"/>
										</xsl:call-template>
									</fo:block>
								</xsl:if>
							</fo:table-cell>
							<fo:table-cell text-align="center">
								<fo:block space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="location"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="quantity"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="format-number(weight, '####0.##')"/>
									<xsl:if test="quantity &gt; 1">
										(<xsl:value-of select="format-number(weight * quantity, '####0.##')"/>)
									</xsl:if>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center" space-before.optimum="1pt" font-size="7pt">
									<xsl:value-of select="format-number(cost, '####0.##')"/>
									<xsl:if test="quantity &gt; 1">
										(<xsl:value-of select="format-number(cost * quantity, '####0.##')"/>)
									</xsl:if>
								</fo:block>
							</fo:table-cell>
						</xsl:variable>

						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="equipment.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="equipment.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
		</xsl:if>
		<!--
			END Equipment/Unequipped table
		-->
	</xsl:template>

	<xsl:template name="equipment.darkline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="equipment.darkline">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template name="equipment.lightline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="equipment.lightline">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>
<!--
====================================
====================================
	TEMPLATE - CURRENT LOAD
====================================
====================================-->
	<xsl:template match="current_load">

		<!-- BEGIN Load table -->
		<fo:table table-layout="fixed" width="100%" space-before.optimum="2mm">
			<fo:table-column column-width="51mm"/>
			<fo:table-column column-width="50mm"/>
			<fo:table-body>
				<fo:table-row xsl:use-attribute-sets="weight.title">
					<fo:table-cell text-align="left" padding-top="1pt" padding-left="1pt">
						<fo:block font-size="7pt" font-weight="bold">
							Current Load: <xsl:value-of select="/character/equipment/total/load"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="end" padding-top="1pt" padding-right="1pt">
						<fo:block font-size="7pt" font-weight="bold">
							Total Weight Carried: <xsl:value-of select="/character/equipment/total/weight"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>





<!--
====================================
====================================
	TEMPLATE - WEIGHT ALLOWANCE
====================================
====================================-->
	<xsl:template match="weight_allowance">

		<!-- BEGIN Weight table -->
		<fo:table table-layout="fixed" width="100%" space-before.optimum="2mm">
			<fo:table-column column-width="20mm"/>
			<fo:table-column column-width="11mm"/>
			<fo:table-column column-width="20mm"/>
			<fo:table-column column-width="11mm"/>
			<fo:table-column column-width="20mm"/>
			<fo:table-column column-width="12mm"/>
  		<fo:table-footer>
				<fo:table-row xsl:use-attribute-sets="weight.title">
					<fo:table-cell text-align="left" number-columns-spanned="2" padding-top="1pt" padding-left="1pt">
						<fo:block font-size="7pt" font-weight="bold">
							Current Load: <xsl:value-of select="/character/equipment/total/load"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="end" number-columns-spanned="4" padding-top="1pt" padding-right="1pt">
						<fo:block font-size="7pt" font-weight="bold">
							Total Weight Carried: <xsl:value-of select="/character/equipment/total/weight"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-footer>
			<fo:table-body>
				<fo:table-row  keep-with-next.within-column="always">
					<fo:table-cell xsl:use-attribute-sets="weight.title" padding-top="1pt"  number-columns-spanned="6">
						<fo:block font-size="10pt" font-weight="bold">
							Weight Allowance
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row  keep-with-next.within-column="always">
					<fo:table-cell padding-top="1pt" padding-right="1mm" xsl:use-attribute-sets="weight.solid">
						<fo:block font-size="7pt" text-align="end">Light</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-right="1mm" xsl:use-attribute-sets="weight">
						<fo:block font-size="7pt">
							<xsl:value-of select="light"/>
							<xsl:text> </xsl:text>
							<xsl:value-of select="/character/unit_set/weight_unit"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-right="1mm" xsl:use-attribute-sets="weight.solid">
						<fo:block font-size="7pt" text-align="end">Medium</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-right="1mm" xsl:use-attribute-sets="weight">
						<fo:block font-size="7pt">
							<xsl:value-of select="medium"/>
							<xsl:text> </xsl:text>
							<xsl:value-of select="/character/unit_set/weight_unit"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-right="1mm" xsl:use-attribute-sets="weight.solid">
						<fo:block font-size="7pt" text-align="end">Heavy</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-right="1mm"  xsl:use-attribute-sets="weight">
						<fo:block font-size="7pt">
							<xsl:value-of select="heavy"/>
							<xsl:text> </xsl:text>
							<xsl:value-of select="/character/unit_set/weight_unit"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next.within-column="always">
					<fo:table-cell padding-top="1pt" padding-right="1mm" xsl:use-attribute-sets="weight.solid">
						<fo:block font-size="7pt" text-align="end">Lift over head</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-right="1mm" xsl:use-attribute-sets="weight">
						<fo:block font-size="7pt">
							<xsl:value-of select="lift_over_head"/>
							<xsl:text> </xsl:text>
							<xsl:value-of select="/character/unit_set/weight_unit"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-right="1mm" xsl:use-attribute-sets="weight.solid">
						<fo:block font-size="7pt" text-align="end">Lift off ground</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-right="1mm" xsl:use-attribute-sets="weight">
						<fo:block font-size="7pt">
							<xsl:value-of select="lift_off_ground"/>
							<xsl:text> </xsl:text>
							<xsl:value-of select="/character/unit_set/weight_unit"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-right="1mm" xsl:use-attribute-sets="weight.solid">
						<fo:block font-size="7pt" text-align="end">Push / Drag</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="1pt" padding-right="1mm" xsl:use-attribute-sets="weight">
						<fo:block font-size="7pt">
							<xsl:value-of select="push_drag"/>
							<xsl:text> </xsl:text>
							<xsl:value-of select="/character/unit_set/weight_unit"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>





<!--
====================================
====================================
	TEMPLATE - Money
====================================
====================================-->
	<xsl:template name="money">
		<xsl:if test="count(equipment/item[contains(type, 'COIN') or contains(type, 'GEM')]) &gt; 0" >
			<fo:table table-layout="fixed" width="100%" space-before.optimum="2mm">
				<fo:table-column column-width="37mm"/>
				<fo:table-column column-width="10mm"/>
				<fo:table-column column-width="47mm"/>
				<fo:table-header>
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell xsl:use-attribute-sets="money.title" number-columns-spanned="3" padding-top="1pt">
							<fo:block font-size="10pt" font-weight="bold">
								Money
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-header>
				<fo:table-footer>
					<fo:table-row xsl:use-attribute-sets="money.title">
						<fo:table-cell text-align="left" border-right-width="0pt" padding-top="1pt" padding-left="1pt">
							<fo:block font-size="7pt" font-weight="bold">
								<xsl:variable name="MoneyValue">
									<xsl:call-template name="Total">
										<xsl:with-param name="Items" select="equipment/item[contains(type, 'COIN') or contains(type, 'GEM')]"/>
										<xsl:with-param name="RunningTotal" select="0"/>
									</xsl:call-template>
								</xsl:variable>
								Total Money: <xsl:value-of select="format-number($MoneyValue, '#,##0.00')"/> gp
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="end" border-left-width="0pt" padding-top="1pt" padding-right="1pt" number-columns-spanned="2">
							<fo:block font-size="7pt" font-weight="bold">
								<xsl:variable name="TotalValue">
									<xsl:call-template name="Total">
										<xsl:with-param name="Items" select="equipment/item"/>
										<xsl:with-param name="RunningTotal" select="0"/>
									</xsl:call-template>
								</xsl:variable>
								Total Equipment Value: <xsl:value-of select="format-number($TotalValue, '#,##0.00')"/> gp
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:variable name="TotalValueOwn">
						<xsl:call-template name="Total">
							<xsl:with-param name="Items" select="equipment/item[note != 'GT' and note != 'L']"/>
							<xsl:with-param name="RunningTotal" select="0"/>
						</xsl:call-template>
					</xsl:variable>
					<xsl:variable name="TotalValueGT">
						<xsl:call-template name="Total">
							<xsl:with-param name="Items" select="equipment/item[note = 'GT']"/>
							<xsl:with-param name="RunningTotal" select="0"/>
						</xsl:call-template>
					</xsl:variable>
                                        <xsl:variable name="TotalValueLeadership">
                                                <xsl:call-template name="Total">
                                                        <xsl:with-param name="Items" select="equipment/item[note = 'L']"/>
                                                        <xsl:with-param name="RunningTotal" select="0"/>
                                                </xsl:call-template>
                                        </xsl:variable>
					<xsl:if test="$TotalValueGT+$TotalValueLeadership &gt; 0">
						<xsl:if test="$TotalValueGT &gt; 0">
						<fo:table-row xsl:use-attribute-sets="money.darkline">
							<fo:table-cell text-align="end" border-left-width="0pt" padding-top="1pt" padding-right="1pt" number-columns-spanned="3">
								<fo:block font-size="7pt" font-weight="bold">
									Total Group Treasure Value: <xsl:value-of select="format-number($TotalValueGT, '#,##0.00')"/> gp
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:if>
						<xsl:if test="$TotalValueLeadership &gt; 0">
						<fo:table-row xsl:use-attribute-sets="money.darkline">
							<fo:table-cell text-align="end" border-left-width="0pt" padding-top="1pt" padding-right="1pt" number-columns-spanned="3">
								<fo:block font-size="7pt" font-weight="bold">
									Total Leadership PC Value: <xsl:value-of select="format-number($TotalValueLeadership, '#,##0.00')"/> gp
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:if>
					<fo:table-row xsl:use-attribute-sets="money.title">
						<fo:table-cell text-align="end" border-left-width="0pt" padding-top="1pt" padding-right="1pt" number-columns-spanned="3">
							<fo:block font-size="7pt" font-weight="bold">
								Total Own Equipment Value: <xsl:value-of select="format-number($TotalValueOwn, '#,##0.00')"/> gp
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</xsl:if>
				</fo:table-footer>
				<fo:table-body>
					<xsl:for-each select="equipment/item[contains(type, 'COIN')]">
						<xsl:sort select="cost" data-type="number" order="descending"/>
						<xsl:variable name="content">
							<fo:table-cell>
								<fo:block font-size="7pt"><xsl:value-of select="name"/>:</fo:block>
							</fo:table-cell>
							<fo:table-cell>
									<fo:block font-size="7pt" text-align="right"><xsl:value-of select="quantity"/></fo:block>
							</fo:table-cell>
							<fo:table-cell></fo:table-cell>
						</xsl:variable>
						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="money.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="money.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
					<xsl:for-each select="equipment/item[contains(type, 'GEM')]">
						<xsl:sort select="cost" data-type="number" order="descending"/>
						<xsl:variable name="content">
							<fo:table-cell>
								<fo:block font-size="7pt"><xsl:value-of select="name"/> (<xsl:value-of select="cost"/> gp)::</fo:block>
							</fo:table-cell>
							<fo:table-cell>
									<fo:block font-size="7pt"><xsl:value-of select="quantity"/></fo:block>
							</fo:table-cell>
						</xsl:variable>
						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="money.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="money.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>



	<xsl:template name="money.darkline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="money.darkline" keep-with-next.within-column="always">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template name="money.lightline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="money.lightline" keep-with-next.within-column="always">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - Misc Magic
====================================
====================================-->
	<xsl:template match="misc/magics">
		<xsl:if test="count(magic|artifact) &gt; 0" >
			<fo:table table-layout="fixed" width="100%" space-before="2mm">
				<fo:table-column column-width="94mm"/>
				<fo:table-body>
					<fo:table-row keep-with-next.within-column="always" >
						<fo:table-cell xsl:use-attribute-sets="magic.title" padding-top="1pt" >
							<fo:block font-size="10pt" font-weight="bold">
								Magic
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="magic|artifact">
						<xsl:variable name="content">
							<fo:table-cell padding-top="1pt">
								<fo:block font-size="7pt"><xsl:value-of select="."/></fo:block>
							</fo:table-cell>
						</xsl:variable>

						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="magic.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="magic.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>



	<xsl:template name="magic.darkline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="magic.darkline" keep-with-next.within-column="always">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template name="magic.lightline">
		<xsl:param name="content"/>
		<fo:table-row xsl:use-attribute-sets="magic.lightline" keep-with-next.within-column="always">
			<xsl:copy-of select="$content"/>
		</fo:table-row>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - Special Abilities
====================================
====================================-->
	<xsl:template match="special_abilities">
		<xsl:if test="count(ability) &gt; 0" >
			<fo:table table-layout="fixed" width="100%" space-before="2mm">
				<fo:table-column column-width="30mm"/>
				<fo:table-column column-width="64mm"/>
				<fo:table-body>
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell xsl:use-attribute-sets="abilities.title" padding-top="1pt" number-columns-spanned="2">
							<fo:block font-size="10pt" font-weight="bold">
								Special Abilities
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:for-each select="ability">
						<xsl:variable name="content">
							<fo:table-cell number-columns-spanned="2" padding="1pt">
								<fo:block font-size="7pt"><xsl:value-of select="name"/></fo:block>
							</fo:table-cell>
						</xsl:variable>
						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="abilities.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="abilities.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - FEATS
====================================
====================================-->
	<xsl:template match="feats">
		<xsl:if test="count(feat[hidden != 'T']) &gt; 0" >
			<fo:table table-layout="fixed" width="100%" space-before="2mm">
				<fo:table-column column-width="51mm"/>
				<fo:table-column column-width="43mm"/>
				<fo:table-body>
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell xsl:use-attribute-sets="abilities.title" padding-top="1pt" number-columns-spanned="2">
							<fo:block font-size="10pt" font-weight="bold">
								Feats
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:for-each select="feat[hidden != 'T']">
						<xsl:sort select="name"/>
						<xsl:variable name="name">
							<xsl:value-of select="name"/>
							<xsl:if test="auto = 'T'">*</xsl:if>
							<xsl:if test="virtual = 'T'">
								<fo:inline vertical-align="super" font-size="6pt">
									<xsl:text> [B]</xsl:text>
								</fo:inline>
							</xsl:if>
						</xsl:variable>
						<xsl:variable name="desc">
							<xsl:if test="benefit = ''"><xsl:value-of select="description"/></xsl:if>
							<xsl:if test="benefit != ''"><xsl:value-of select="benefit"/></xsl:if>
						</xsl:variable>
						<xsl:call-template name="abilities">
							<xsl:with-param name="name" select="$name"/>
							<xsl:with-param name="source" select="source"/>
							<xsl:with-param name="description" select="$desc"/>
							<xsl:with-param name="position" select="position()"/>
						</xsl:call-template>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - TRAITS
====================================
====================================-->
	<xsl:template match="traits">
		<xsl:if test="count(trait) &gt; 0" >
			<fo:table table-layout="fixed" width="100%" space-before="2mm">
				<fo:table-column column-width="51mm"/>
				<fo:table-column column-width="43mm"/>
				<fo:table-body>
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell xsl:use-attribute-sets="abilities.title" padding-top="1pt" number-columns-spanned="2">
							<fo:block font-size="10pt" font-weight="bold">
								Traits
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:for-each select="trait">
					<xsl:sort select="name"/>
					<xsl:call-template name="abilities">
						<xsl:with-param name="name" select="name"/>
						<xsl:with-param name="source" select="source"/>
						<xsl:with-param name="description" select="description"/>
						<xsl:with-param name="position" select="position()"/>
					</xsl:call-template>
				</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>


<!--
=========================================
=========================================
	TEMPLATES - SPECIAL ATTACKS & QUALITIES
=========================================
=========================================-->
	<xsl:template match="special_attacks">
		<xsl:if test="count(special_attack[contains(type,'RAGEX')=false and
		                                   contains(type,'RAGEPOWERX')=false and
		                                   contains(type,'CHANNELENERGY')=false and
		                                   contains(aspect,'CheckType')=false and
		                                   contains(aspect,'MasterAbility')=false and
		                                   contains(aspect,'ChildAbility')=false]) &gt; 0" >
			<fo:table table-layout="fixed" width="100%" space-before="2mm">
				<fo:table-column column-width="51mm"/>
				<fo:table-column column-width="43mm"/>
				<fo:table-body>
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell xsl:use-attribute-sets="abilities.title" padding-top="1pt" number-columns-spanned="2">
							<fo:block font-size="10pt" font-weight="bold">
								Special Attacks
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:for-each select="special_attack[contains(type,'RAGEX')=false and
					                                     contains(type,'RAGEPOWERX')=false and
					                                     contains(type,'CHANNELENERGY')=false and
		                                           contains(aspect,'CheckType')=false and
		                                           contains(aspect,'MasterAbility')=false and
		                                           contains(aspect,'ChildAbility')=false]">
						<xsl:sort select="name"/>
						<xsl:call-template name="abilities">
							<xsl:with-param name="name" select="name"/>
							<xsl:with-param name="source" select="source"/>
							<xsl:with-param name="description" select="description"/>
							<xsl:with-param name="position" select="position()"/>
						</xsl:call-template>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>

	<xsl:template match="special_qualities">
		<xsl:if test="count(special_quality[contains(type,'RAGEX')=false and
		                                   contains(type,'RAGEPOWERX')=false and
		                                   contains(type,'CHANNELENERGY')=false and
		                                   contains(aspect,'CheckType')=false and
		                                   contains(aspect,'MasterAbility')=false and
		                                   contains(aspect,'ChildAbility')=false]) &gt; 0" >
			<fo:table table-layout="fixed" width="100%" space-before="2mm">
				<fo:table-column column-width="51mm"/>
				<fo:table-column column-width="43mm"/>
				<fo:table-body>
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell xsl:use-attribute-sets="abilities.title" padding-top="1pt" number-columns-spanned="2">
							<fo:block font-size="10pt" font-weight="bold">
								Special Qualities
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:for-each select="special_quality[contains(type,'RAGEX')=false and
					                                     contains(type,'RAGEPOWERX')=false and
					                                     contains(type,'CHANNELENERGY')=false and
		                                           contains(aspect,'CheckType')=false and
		                                           contains(aspect,'MasterAbility')=false and
                                               contains(aspect,'ChildAbility')=false]">
						<xsl:sort select="name"/>
						<!--<xsl:if test="name!=''">-->
							<xsl:call-template name="abilities">
								<xsl:with-param name="name" select="name"/>
								<xsl:with-param name="source" select="source"/>
								<xsl:with-param name="description" select="description"/>
								<xsl:with-param name="position" select="position()"/>
							</xsl:call-template>
						<!--</xsl:if>-->
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - MASTER ABILITIES
====================================
====================================-->
	<xsl:template match="master_abilities">
		<xsl:if test="count(master_ability) &gt; 0" >
			<xsl:for-each select="master_ability">
				<fo:table table-layout="fixed" width="100%" space-before="2mm">
					<fo:table-column column-width="51mm"/>
					<fo:table-column column-width="43mm"/>
					<fo:table-body>
						<fo:table-row keep-with-next.within-column="always">
							<fo:table-cell xsl:use-attribute-sets="abilities.title" padding-top="1pt" number-columns-spanned="2">
								<fo:block font-size="10pt" font-weight="bold">
									<xsl:value-of select="name"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					<xsl:sort select="name"/>
					<xsl:call-template name="abilities">
						<xsl:with-param name="name" select="name"/>
						<xsl:with-param name="source" select="source"/>
						<xsl:with-param name="description" select="description"/>
						<xsl:with-param name="position" select="position()"/>
					</xsl:call-template>
					<xsl:for-each select="subability">
						<xsl:sort select="name"/>
						<xsl:call-template name="abilities">
							<xsl:with-param name="name" select="name"/>
							<xsl:with-param name="source" select="source"/>
							<xsl:with-param name="description" select="description"/>
							<xsl:with-param name="position" select="position()+1"/>
						</xsl:call-template>
					</xsl:for-each>
					</fo:table-body>
				</fo:table>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - ARCHETYPES
====================================
====================================-->
	<xsl:template match="archetypes">
		<xsl:if test="count(archetype) &gt; 0" >
			<fo:table table-layout="fixed" width="100%" space-before="2mm">
					<fo:table-column column-width="51mm"/>
					<fo:table-column column-width="43mm"/>
				<fo:table-body>
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell xsl:use-attribute-sets="abilities.title" padding-top="1pt" number-columns-spanned="2">
							<fo:block font-size="10pt" font-weight="bold">
								Archetypes
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:for-each select="archetype">
						<xsl:sort select="name"/>
						<xsl:call-template name="abilities">
							<xsl:with-param name="name" select="name"/>
							<xsl:with-param name="source" select="source"/>
							<xsl:with-param name="description" select="description"/>
							<xsl:with-param name="position" select="position()"/>
						</xsl:call-template>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>


	<!--
	====================================
	====================================
	TEMPLATE - BOONS
	====================================
		====================================-->
			<xsl:template match="boons">
				<xsl:if test="count(boon) &gt; 0" >
					<fo:table table-layout="fixed" width="100%" space-before="2mm">
					<fo:table-column column-width="51mm"/>
					<fo:table-column column-width="43mm"/>
						<fo:table-body>
							<fo:table-row keep-with-next.within-column="always">
								<fo:table-cell xsl:use-attribute-sets="abilities.title" padding-top="1pt" number-columns-spanned="2">
									<fo:block font-size="10pt" font-weight="bold">
										Boons
									</fo:block>
								</fo:table-cell>
							</fo:table-row>

							<xsl:for-each select="boon">
								<xsl:sort select="name"/>
								<xsl:call-template name="abilities">
									<xsl:with-param name="name" select="name"/>
									<xsl:with-param name="source" select="source"/>
									<xsl:with-param name="description" select="description"/>
									<xsl:with-param name="position" select="position()"/>
								</xsl:call-template>
							</xsl:for-each>
						</fo:table-body>
					</fo:table>
				</xsl:if>
			</xsl:template>


<!--
====================================
====================================
	TEMPLATE - ANIMAL TRICKS
====================================
====================================-->
	<xsl:template match="animal_tricks">
		<xsl:if test="count(animal_trick[contains(type,'ANIMALTRAINING')=false]) &gt; 0" >
			<fo:table table-layout="fixed" width="100%" space-before="2mm">
				<fo:table-column column-width="39mm"/>
				<fo:table-column column-width="55mm"/>
				<fo:table-body>
					<fo:table-row keep-with-next.within-column="always">
						<fo:table-cell xsl:use-attribute-sets="abilities.title" padding-top="1pt" number-columns-spanned="2">
							<fo:block font-size="10pt" font-weight="bold">
								Animal Tricks
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:for-each select="animal_trick[contains(type,'ANIMALTRAINING')=false]">
						<xsl:sort select="name"/>
						<xsl:variable name="content">
							<fo:table-cell padding="1pt">
								<fo:block font-size="7pt">
									<xsl:value-of select="name"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="1pt">
								<fo:block font-size="7pt" text-align="justify">
									<xsl:value-of select="description"/>
								</fo:block>
								<xsl:if test="source != ''">
									<fo:block font-size="7pt" text-align="right">
										<xsl:text>[</xsl:text>
										<xsl:value-of select="source"/>
										<xsl:text>]</xsl:text>
									</fo:block>
								</xsl:if>
							</fo:table-cell>
						</xsl:variable>
						<xsl:if test="position() mod 2 = 0">
							<xsl:call-template name="abilities.darkline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
						<xsl:if test="position() mod 2 = 1">
							<xsl:call-template name="abilities.lightline"><xsl:with-param name="content" select="$content"/></xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - SPELLS
====================================
====================================-->
	<xsl:template match="spells">
		<!-- BEGIN Spells Pages -->
		<xsl:if test="count(.//spell) &gt; 0">
			<fo:page-sequence >
				<xsl:attribute name="master-reference">Portrait</xsl:attribute>
				<xsl:attribute name="font-family"><xsl:value-of select="$PCGenFont"/></xsl:attribute>
				<xsl:call-template name="page.header"/>
				<xsl:call-template name="page.footer"/>
				<fo:flow flow-name="body">
					<xsl:apply-templates select="spells_innate/racial_innate"/>
					<xsl:apply-templates select="spells_innate/class_innate"/>
					<xsl:apply-templates select="known_spells"/>
<!-- 					<xsl:apply-templates select="memorized_spells"/> -->
				</fo:flow>
			</fo:page-sequence>
		</xsl:if>
		<!-- END Spells Pages -->
	</xsl:template>




<!--
====================================
====================================
	TEMPLATE - Racial Innate
====================================
====================================-->
	<xsl:template match="racial_innate">
		<xsl:if test="count(.//spell) &gt; 0">
			<fo:block>
				<fo:table table-layout="fixed" width="100%">
					<xsl:call-template name="spells.known.header.row">
						<xsl:with-param name="columnOne" select="''"/>
						<xsl:with-param name="title" select="'Innate Racial Spells'"/>
					</xsl:call-template>
					<fo:table-body>
						<xsl:apply-templates select="spell" mode="details">
							<xsl:with-param name="columnOne" select="'Times'"/>
						</xsl:apply-templates>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - INNATE CLASS SPELLS
====================================
====================================-->
	<xsl:template match="class_innate">
		<xsl:if test="count(.//spell) &gt; 0">
			<xsl:for-each select="spellbook">
				<xsl:sort select="name"/>
				<fo:table table-layout="fixed" width="100%" space-before="5mm">
					<xsl:call-template name="spells.known.header.row">
						<xsl:with-param name="columnOne" select="''"/>
						<xsl:with-param name="title" select="concat(@name, ' Innate Spells')"/>
					</xsl:call-template>
					<fo:table-body>
						<xsl:apply-templates select="spell" mode="details">
							<xsl:with-param name="columnOne" select="'Times'"/>
						</xsl:apply-templates>
					</fo:table-body>
				</fo:table>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - KNOWN SPELLS
====================================
====================================-->
	<xsl:template match="known_spells">
		<xsl:if test="count(.//spell) &gt; 0">
			<xsl:apply-templates select="class" mode="spells.known"/>
		</xsl:if>
	</xsl:template>





<!--
====================================
====================================
	TEMPLATE - KNOWN SPELLS - SINGLE CLASS
====================================
====================================-->
	<xsl:template match="class" mode="spells.known">
		<xsl:if test="count(.//spell) &gt; 0">
			<fo:block break-before="page"/>
			<fo:table table-layout="fixed" width="100%">
				<xsl:variable name="titletext">
					<xsl:choose>
						<xsl:when test="@spellcastertype = 'Psionic'">
							<xsl:value-of select="concat(@spelllistclass, ' Powers')"/>
						</xsl:when>
						<xsl:otherwise><xsl:value-of select="concat(@spelllistclass, ' Spells')"/></xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<xsl:variable name="columnOne">
					<xsl:choose>
						<xsl:when test="@spellcastertype = 'Psionic'">PowerPoints</xsl:when>
						<xsl:otherwise>Boxes</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<xsl:variable name="columnOneTitle">
					<xsl:choose>
						<xsl:when test="@spellcastertype = 'Psionic'">Power Points</xsl:when>
						<xsl:otherwise></xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<xsl:call-template name="spells.known.header.row">
					<xsl:with-param name="columnOne" select="$columnOneTitle"/>
					<xsl:with-param name="title" select="$titletext"/>
					<xsl:with-param name="details" select="'false'"/>
				</xsl:call-template>
				<fo:table-body>
					<fo:table-row height="2mm"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="12">
							<xsl:apply-templates select="." mode="spell.level.table"/>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row height="2mm"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
					<xsl:apply-templates select="level" mode="known.spells">
						<xsl:with-param name="columnOne" select="$columnOne"/>
						<xsl:with-param name="columnOneTitle" select="$columnOneTitle"/>
					</xsl:apply-templates>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>




	<xsl:template match="class" mode="spell.level.table">
		<fo:table table-layout="fixed" width="100%" border-collapse="collapse">
			<fo:table-column column-width="40mm"/>
			<fo:table-column column-width="20mm"/>
			<fo:table-column column-width="9mm"/>
			<fo:table-column column-width="9mm"/>
			<fo:table-column column-width="9mm"/>
			<fo:table-column column-width="9mm"/>
			<fo:table-column column-width="9mm"/>
			<fo:table-column column-width="9mm"/>
			<fo:table-column column-width="9mm"/>
			<fo:table-column column-width="9mm"/>
			<fo:table-column column-width="9mm"/>
			<fo:table-column column-width="9mm"/>
			<fo:table-column column-width="40mm"/>
			<fo:table-body>
				<xsl:apply-templates select="." mode="spell.level.count"/>
				<xsl:if test="@memorize='false'">
					<xsl:apply-templates select="." mode="spell.level.known"/>
				</xsl:if>
				<xsl:apply-templates select="." mode="spell.level.cast"/>
				<xsl:apply-templates select="." mode="spell.concentration"/>
			</fo:table-body>
		</fo:table>
	</xsl:template>



	<xsl:template match="class" mode="spell.level.count">
		<fo:table-row keep-with-next.within-column="always">
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="spelllist.known.header">
				<fo:block font-size="6pt" font-weight="bold" space-start="2pt" space-before="2pt" space-after="1pt">LEVEL</fo:block>
			</fo:table-cell>
			<xsl:for-each select="level">
				<fo:table-cell xsl:use-attribute-sets="spelllist.known.header centre">
					<fo:block space-before="2pt" space-after="1pt" font-size="6pt">
						<xsl:value-of select="@number"/>
					</fo:block>
				</fo:table-cell>
			</xsl:for-each>
			<fo:table-cell><fo:block/></fo:table-cell>
		</fo:table-row>
	</xsl:template>

	<xsl:template match="class" mode="spell.level.known">
		<fo:table-row keep-with-next.within-column="always">
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell  xsl:use-attribute-sets="spelllist.known.header">
				<fo:block font-size="6pt" font-weight="bold" space-start="2pt" space-before="2pt" space-after="1pt">KNOWN</fo:block>
			</fo:table-cell>
			<xsl:for-each select="level">
				<fo:table-cell  xsl:use-attribute-sets="spelllist.known.known">
					<fo:block font-size="6pt" space-before="2pt" space-after="1pt">
						<xsl:choose>
							<xsl:when test="@known &gt; 0">
								<xsl:value-of select="@known"/>
							</xsl:when>
							<xsl:otherwise>
								&#x2014;
							</xsl:otherwise>
						</xsl:choose>
					</fo:block>
				</fo:table-cell>
			</xsl:for-each>
			<fo:table-cell><fo:block/></fo:table-cell>
		</fo:table-row>
	</xsl:template>

	<xsl:template match="class" mode="spell.level.cast">
		<fo:table-row padding-bottom="2mm">
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell  xsl:use-attribute-sets="spelllist.known.header">
				<fo:block font-size="6pt" font-weight="bold" space-start="2pt" space-before="2pt" space-after="1pt">PER DAY</fo:block>
			</fo:table-cell>
			<xsl:for-each select="level">
				<fo:table-cell xsl:use-attribute-sets="spelllist.known.perday">
					<fo:block font-size="6pt" space-before="2pt" space-after="1pt">
						<xsl:choose>
							<xsl:when test="@cast != 0">
								<xsl:value-of select="@cast"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:choose>
									<xsl:when test="@known != 0">
										at will
									</xsl:when>
									<xsl:otherwise>
										&#x2014;
									</xsl:otherwise>
								</xsl:choose>
							</xsl:otherwise>
						</xsl:choose>
					</fo:block>
				</fo:table-cell>
			</xsl:for-each>
			<fo:table-cell><fo:block/></fo:table-cell>
		</fo:table-row>
	</xsl:template>

	<xsl:template match="class" mode="spell.concentration">
		<fo:table-row keep-with-next.within-column="always">
			<fo:table-cell><fo:block/></fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="spelllist.concentration">
				<fo:block font-size="6pt" font-weight="bold" space-start="2pt" space-before="2pt" space-after="1pt">Concentration</fo:block>
			</fo:table-cell>
			<fo:table-cell xsl:use-attribute-sets="spelllist.concentration">
				<fo:block space-before="2pt" space-after="1pt" font-size="6pt"><xsl:value-of select="@concentration"/></fo:block>
			</fo:table-cell>
			<fo:table-cell  xsl:use-attribute-sets="spelllist.concentration.bonus" number-columns-spanned="9">
				<fo:block space-before="2pt" space-after="1pt" font-size="6pt">


				</fo:block>
			</fo:table-cell>
		</fo:table-row>
	</xsl:template>



<!--
====================================
====================================
	TEMPLATE - KNOWN SPELL LEVEL
====================================
====================================-->
	<xsl:template match="level" mode="known.spells">
		<xsl:param name="columnOne" select="'Boxes'"/>
		<xsl:param name="columnOneTitle" select="''"/>

		<xsl:if test="count(.//spell) &gt; 0">
			<fo:table-row keep-with-next.within-column="always">
				<fo:table-cell xsl:use-attribute-sets="spelllist.header" number-columns-spanned="1" text-align="left" padding-left="0pt" padding-top="1pt" border-after-width="0pt">
						<fo:block text-align="start" font-size="8pt" font-family="ZapfDingbats">
							<xsl:choose>
								<xsl:when test="../@memorize = 'true'">
									<xsl:call-template name="for.loop">
										<xsl:with-param name="count" select="5"/>
									</xsl:call-template>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="for.loop">
										<xsl:with-param name="count" select="@cast"/>
									</xsl:call-template>
								</xsl:otherwise>
							</xsl:choose>
						</fo:block>
				</fo:table-cell>
				<fo:table-cell xsl:use-attribute-sets="spelllist.header" number-columns-spanned="8" text-align="left" padding-left="1pt" padding-top="1pt" border-after-width="0pt">
					<fo:block font-size="12pt">
						LEVEL <xsl:value-of select="@number"/>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell xsl:use-attribute-sets="spelllist.header" number-columns-spanned="2" text-align="left" padding-right="1pt" padding-top="1pt" border-before-width="0pt">
					<fo:block font-size="12pt">
						<xsl:choose>
							<xsl:when test="@cast != 0">
								Cast: <xsl:value-of select="@cast"/>/day
							</xsl:when>
							<xsl:otherwise>
								<xsl:choose>
									<xsl:when test="@known != 0">
										Cast: at will
									</xsl:when>
									<xsl:otherwise>
										Cast: &#x2014;
									</xsl:otherwise>
								</xsl:choose>
							</xsl:otherwise>
						</xsl:choose>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell xsl:use-attribute-sets="spelllist.header" text-align="left" padding-left="0pt" padding-top="1pt" border-after-width="0pt">
						<fo:block text-align="start" font-size="8pt" font-family="ZapfDingbats">
							<xsl:choose>
								<xsl:when test="../@memorize = 'true'">
									<xsl:call-template name="for.loop">
										<xsl:with-param name="count" select="5"/>
									</xsl:call-template>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="for.loop">
										<xsl:with-param name="count" select="@cast"/>
									</xsl:call-template>
								</xsl:otherwise>
							</xsl:choose>
						</fo:block>
				</fo:table-cell>
			</fo:table-row>
			<xsl:call-template name="spells.header.column.titles">
				<xsl:with-param name="columnOne" select="$columnOneTitle"/>
			</xsl:call-template>
			<xsl:apply-templates select="spell" mode="details">
				<xsl:with-param name="columnOne" select="$columnOne"/>
				<xsl:sort select="name"/>
      </xsl:apply-templates>
			<fo:table-row height="1mm"><fo:table-cell><fo:block></fo:block></fo:table-cell></fo:table-row>
		</xsl:if>
	</xsl:template>




<!--
====================================
====================================
	TEMPLATE - KNOWN SPELL HEADER ROW
====================================
====================================-->
	<xsl:template name="spells.known.header.row">
		<xsl:param name="title" select="''"/>
		<xsl:param name="columnOne" select="''"/>
		<xsl:param name="details" select="'true'"/>
		<fo:table-column column-width="11mm"/>
		<fo:table-column column-width="34mm"/><!-- name -->
		<fo:table-column column-width="5mm"/><!-- dc -->
		<fo:table-column column-width="18mm"/><!-- saving throw -->
		<fo:table-column column-width="18mm"/><!-- time -->
		<fo:table-column column-width="24mm"/><!-- duration -->
		<fo:table-column column-width="18mm"/><!-- range -->
		<fo:table-column column-width="9mm"/><!-- comp -->
		<fo:table-column column-width="18mm"/><!-- SR -->
		<fo:table-column column-width="15mm"/><!-- school -->
		<fo:table-column column-width="09mm"/><!-- source -->
		<fo:table-column column-width="11mm"/><!-- source -->
		<fo:table-header>
			<fo:table-row>
				<fo:table-cell number-columns-spanned="12" xsl:use-attribute-sets="spelllist.header" padding-top="1pt">
					<fo:block font-size="12pt">
						<xsl:value-of select="$title"/>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
			<xsl:if test="$details = 'true'">
				<xsl:call-template name="spells.header.column.titles">
					<xsl:with-param name="columnOne" select="$columnOne"/>
				</xsl:call-template>
			</xsl:if>
		</fo:table-header>
		<fo:table-footer>
			<fo:table-row>
				<fo:table-cell number-columns-spanned="12" xsl:use-attribute-sets="spelllist.footer" padding-top="1pt" >
					<fo:block font-size="5pt">* =Domain/Speciality Spell
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
		</fo:table-footer>
	</xsl:template>






<!--
====================================
====================================
	TEMPLATE - KNOWN SPELL HEADER COLUMN TITLES
====================================
====================================-->
	<xsl:template name="spells.header.column.titles">
		<xsl:param name="columnOne" select="''"/>
		<fo:table-row xsl:use-attribute-sets="spelllist.levelheader" keep-with-next.within-column="always">
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt" font-weight="bold"><xsl:value-of select="$columnOne"/></fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt" font-weight="bold">Name</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt" font-weight="bold">DC</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt" font-weight="bold">Saving Throw</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt" font-weight="bold">Time</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt" font-weight="bold">Duration</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt" font-weight="bold">Range</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt" font-weight="bold">Comp.</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt" font-weight="bold">Spell Resistance</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt" font-weight="bold">School</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt" number-columns-spanned="2">
				<fo:block text-align="start" font-size="5pt" font-weight="bold">Source</fo:block>
			</fo:table-cell>
		</fo:table-row>
	</xsl:template>





<!--
====================================
====================================
	TEMPLATE - SPELL DETAILS
====================================
====================================-->
	<xsl:template match="spell" mode="details">
		<xsl:param name="columnOne" select="'Times'"/>
		<xsl:variable name="row1">
			<xsl:choose>
				<xsl:when test="$columnOne = 'Times'">
					<xsl:choose>
						<xsl:when test="times_memorized &gt;= 0">
							<fo:table-cell padding-top="0pt" padding-right="3pt">
								<fo:block text-align="start" font-size="8pt" font-family="ZapfDingbats">
									<xsl:call-template name="for.loop">
										<xsl:with-param name="count" select="times_memorized"/>
									</xsl:call-template>
								</fo:block>
							</fo:table-cell>
						</xsl:when>
						<xsl:when test="../../@memorize = 'false'">
							<fo:table-cell padding-top="1pt" text-align="start">
								<fo:block></fo:block>
							</fo:table-cell>
						</xsl:when>
						<xsl:otherwise>
							<fo:table-cell padding-top="1pt" text-align="start">
								<fo:block text-align="start" font-size="7pt">At Will</fo:block>
							</fo:table-cell>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:when>
				<xsl:when test="$columnOne = 'Boxes'">
					<fo:table-cell padding-top="0pt" padding-right="3pt">
						<fo:block text-align="center" font-size="8pt" font-family="ZapfDingbats">
							<xsl:if test="../../@memorize = 'true'">
								<xsl:call-template name="for.loop">
									<xsl:with-param name="count" select="1"/>
								</xsl:call-template>
								<xsl:if test="(../@number &gt; 0) and not (../../@spellcastertype = 'Divine' and (bonusspell = '*' or bonusspell = '**'))">
									<xsl:call-template name="for.loop">
										<xsl:with-param name="count" select="4"/>
									</xsl:call-template>
								</xsl:if>
							</xsl:if>
						</fo:block>
					</fo:table-cell>
				</xsl:when>
				<xsl:when test="$columnOne = 'PowerPoints'">
					<fo:table-cell padding-top="0pt" padding-right="3pt">
						<fo:block text-align="start" font-size="8pt" >
							<xsl:variable name="ppcount" select="((../@number)*2)-1"/>
							<xsl:choose>
								<xsl:when test="number($ppcount) &gt; 0"><xsl:value-of select="$ppcount"/></xsl:when>
								<xsl:otherwise>0/1</xsl:otherwise>
							</xsl:choose>
						</fo:block>
					</fo:table-cell>
				</xsl:when>
			</xsl:choose>
			<fo:table-cell padding-top="1pt">
				<xsl:choose>
					<xsl:when test="../../@spellcastertype = 'Arcane' and (bonusspell = '*' or bonusspell = '**')">
						<fo:block text-align="start" font-size="7pt" font-weight="bold">
							<xsl:value-of select="outputname"/>
						</fo:block>
					</xsl:when>
					<xsl:when test="../../@spellcastertype = 'Divine' and (bonusspell = '*' or bonusspell = '**')">
						<fo:block text-align="start" font-size="7pt" font-style="italic">
							<xsl:value-of select="outputname"/>
						</fo:block>
					</xsl:when>
					<xsl:otherwise>
						<fo:block text-align="start" font-size="7pt">
							<xsl:value-of select="outputname"/>
						</fo:block>
					</xsl:otherwise>
				</xsl:choose>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt"><xsl:value-of select="dc"/></fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt"><xsl:value-of select="saveinfo"/></fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt"><xsl:value-of select="castingtime"/></fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt"><xsl:value-of select="duration"/></fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt"><xsl:value-of select="range"/></fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt"><xsl:value-of select="components"/></fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt"><xsl:value-of select="spell_resistance"/></fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt">
				<fo:block text-align="start" font-size="5pt"><xsl:value-of select="school/school"/></fo:block>
				<xsl:if test="school/subschool != ''">
				  <fo:block text-align="start" font-size="4pt">(<xsl:value-of select="school/subschool"/>)</fo:block>
	      </xsl:if>
				<xsl:if test="school/descriptor != ''">
					<fo:block text-align="start" font-size="4pt">[<xsl:value-of select="school/descriptor"/>]</fo:block>
	      </xsl:if>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt" number-columns-spanned="2">
				<fo:block text-align="start" font-size="5pt">
					<xsl:value-of select="source/source"/>
				</fo:block>
			</fo:table-cell>
		</xsl:variable>
		<xsl:variable name="row2">
			<fo:table-cell padding-top="1pt"/>
			<fo:table-cell padding-top="1pt" number-columns-spanned="5">
				<fo:block text-align="start" font-size="5pt">
					<xsl:value-of select="effect"/>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-top="1pt" number-columns-spanned="6">
				<fo:block text-align="start" font-size="5pt">
					<fo:inline font-style="italic">Target: </fo:inline><xsl:value-of select="target"/>
				</fo:block>
			</fo:table-cell>
		</xsl:variable>
		<xsl:if test="position() mod 2 = 0">
			<xsl:call-template name="spelllist.darkline">
				<xsl:with-param name="row1" select="$row1"/>
				<xsl:with-param name="row2" select="$row2"/>
			</xsl:call-template>
		</xsl:if>
		<xsl:if test="position() mod 2 = 1">
			<xsl:call-template name="spelllist.lightline">
				<xsl:with-param name="row1" select="$row1"/>
				<xsl:with-param name="row2" select="$row2"/>
			</xsl:call-template>
		</xsl:if>

	</xsl:template>

	<xsl:template name="spelllist.darkline">
		<xsl:param name="row1"/>
		<xsl:param name="row2"/>
		<fo:table-row xsl:use-attribute-sets="spelllist.darkline" keep-with-next.within-column="always">
			<xsl:copy-of select="$row1"/>
		</fo:table-row>
		<fo:table-row xsl:use-attribute-sets="spelllist.darkline" >
			<xsl:copy-of select="$row2"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template name="spelllist.lightline">
		<xsl:param name="row1"/>
		<xsl:param name="row2"/>
		<fo:table-row xsl:use-attribute-sets="spelllist.lightline" keep-with-next.within-column="always">
			<xsl:copy-of select="$row1"/>
		</fo:table-row>
		<fo:table-row xsl:use-attribute-sets="spelllist.lightline" >
			<xsl:copy-of select="$row2"/>
		</fo:table-row>
	</xsl:template>


	<xsl:template match="memorized_spells">
		<xsl:if test="count(.//spell) &gt; 0">
			<fo:block break-before="page">
				<xsl:apply-templates mode="spells.memorized"/>
			</fo:block>
		</xsl:if>
	</xsl:template>



	<xsl:template name="spells.memorized.header">
		<xsl:param name="title" select="'Unknown'"/>
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="190mm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell xsl:use-attribute-sets="spells.memorized.header" padding-top="1pt" >
						<fo:block font-size="12pt">
							<xsl:value-of select="$title"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	<xsl:template match="racial_innate_memorized" mode="spells.memorized">
		<xsl:if test="count(.//spell) &gt; 0">
			<xsl:call-template name="spells.memorized.header">
				<xsl:with-param name="title" select="'Innate'"/>
			</xsl:call-template>
			<fo:table table-layout="fixed" width="100%" space-after="5mm">
				<fo:table-column column-width="8mm"/>
				<fo:table-column column-width="30mm"/>
				<fo:table-body>
					<xsl:apply-templates mode="spells.memorized"/>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>

	<xsl:template match="class_innate_memorized" mode="spells.memorized">
		<xsl:if test="count(.//spell) &gt; 0">
			<xsl:apply-templates mode="spells.memorized.innate"/>
		</xsl:if>
	</xsl:template>


	<xsl:template match="spellbook" mode="spells.memorized.innate">
		<xsl:if test="count(.//spell) &gt; 0">
			<xsl:call-template name="spells.memorized.header">
				<xsl:with-param name="title" select="concat(@name, ' Innate Spells')"/>
			</xsl:call-template>
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="8mm"/>
				<fo:table-column column-width="30mm"/>
				<fo:table-body>
					<xsl:apply-templates mode="spells.memorized"/>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>


	<xsl:template match="spellbook" mode="spells.memorized">
		<xsl:if test="count(.//spell) &gt; 0">
			<fo:table table-layout="fixed" width="100%" space-before="4mm">
				<fo:table-column column-width="38mm"/>
				<fo:table-column column-width="38mm"/>
				<fo:table-column column-width="38mm"/>
				<fo:table-column column-width="38mm"/>
				<fo:table-column column-width="38mm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell xsl:use-attribute-sets="spells.memorized.header" padding-top="1pt" number-columns-spanned="5">
							<fo:block font-size="10pt">
								Spellbook: <xsl:value-of select="@name"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:apply-templates mode="spells.memorized"/>
				</fo:table-body>
			</fo:table>
		</xsl:if>
	</xsl:template>


	<xsl:template match="class" mode="spells.memorized" >
		<xsl:if test="count(.//spell) &gt; 0">
			<fo:table-row>
				<fo:table-cell xsl:use-attribute-sets="spells.memorized.header" padding-top="1pt" number-columns-spanned="5">
					<fo:block font-size="8pt">
						<xsl:value-of select="@spelllistclass"/>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
			<fo:table-row>
				<xsl:apply-templates select="level[@number &lt; 5]" mode="spells.memorized"/>
			</fo:table-row>
			<fo:table-row>
				<xsl:apply-templates select="level[@number &gt;= 5]" mode="spells.memorized"/>
			</fo:table-row>
		</xsl:if>
	</xsl:template>


	<xsl:template match="level" mode="spells.memorized">
		<fo:table-cell padding-top="1pt">
			<fo:block font-size="5pt">
				<xsl:if test="count(.//spell) &gt; 0">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="8mm"/>
						<fo:table-column column-width="30mm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell xsl:use-attribute-sets="spells.memorized.level" padding-top="1pt" number-columns-spanned="2">
									<fo:block font-size="7pt">
										Level <xsl:value-of select="@number"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<xsl:apply-templates mode="spells.memorized"/>
						</fo:table-body>
					</fo:table>
				</xsl:if>
			</fo:block>
		</fo:table-cell>
	</xsl:template>



	<xsl:template match="spell" mode="spells.memorized">
		<fo:table-row>
			<xsl:choose>
				<xsl:when test="times_memorized &gt;= 0">
					<fo:table-cell padding-top="0pt" text-align="end" xsl:use-attribute-sets="spells.memorized">
						<fo:block font-size="7pt" font-family="ZapfDingbats">
							<xsl:call-template name="for.loop">
								<xsl:with-param name="count" select="times_memorized"/>
							</xsl:call-template>
						</fo:block>
					</fo:table-cell>
				</xsl:when>
				<xsl:otherwise>
					<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="spells.memorized">
						<fo:block font-size="6pt">At Will</fo:block>
					</fo:table-cell>
				</xsl:otherwise>
			</xsl:choose>
			<fo:table-cell>
				<fo:block font-size="7pt" xsl:use-attribute-sets="spells.memorized">
					<xsl:value-of select="bonusspell"/> <xsl:value-of select="name"/>
					<xsl:if test="dc &gt; 0"> (DC:<xsl:value-of select="dc"/>)</xsl:if>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
	</xsl:template>

<!--
====================================
====================================
	TEMPLATE - BIO
====================================
====================================-->
	<xsl:template match="basics" mode="bio">
		<!-- BEGIN BIO Pages -->
		<xsl:if test="string-length(translate(normalize-space(concat(description,bio)), ' ', '')) &gt; 0">
			<fo:page-sequence >
				<xsl:attribute name="master-reference">Portrait</xsl:attribute>
				<xsl:attribute name="font-family"><xsl:value-of select="$PCGenFont"/></xsl:attribute>
				<xsl:call-template name="page.footer"/>
				<fo:flow flow-name="body">
					<fo:block font-size="14pt" xsl:use-attribute-sets="bio" break-before="page" span="all">
						<xsl:value-of select="name"/>
						<xsl:if test="string-length(followerof) &gt; 0" >- <xsl:value-of select="followerof"/></xsl:if>
					</fo:block>
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="94mm"/>
							<xsl:if test="string-length(portrait) &gt; 0">
								<fo:table-column column-width="2mm"/>
								<fo:table-column column-width="94mm"/>
							</xsl:if>
							<fo:table-body>

								<fo:table-row>
									<xsl:if test="string-length(portrait) &gt; 0">
										<fo:table-cell display-align="center" xsl:use-attribute-sets="picture" number-rows-spanned="36">
											<fo:block start-indent="1mm" height="100mm">
												<xsl:variable name="portrait_file" select="portrait"/>
												<fo:external-graphic src="file:{$portrait_file}" width="92mm" scaling="uniform"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell number-rows-spanned="36"/>
									</xsl:if>
									<fo:table-cell>
										<fo:block xsl:use-attribute-sets="bio" font-size="9pt"><xsl:value-of select="race"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title" >
										<fo:block font-size="6pt">RACE</fo:block>
									</fo:table-cell>
								</fo:table-row>


								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="age"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">AGE</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="gender/long"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">GENDER</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="vision"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">VISION</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="alignment/long"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">ALIGNMENT</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="handed"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">DOMINANT HAND</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="height/total"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="6pt">HEIGHT</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="weight/weight_unit"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">WEIGHT</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="eyes/color"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">EYE COLOR</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="skin/color"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">SKIN COLOR</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt">
											<xsl:value-of select="hair/color"/>
											<xsl:value-of select="hair/length"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">HAIR</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt"><xsl:value-of select="phobias"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">
											PHOBIAS
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt">
											<xsl:for-each select="personality/trait">
												<xsl:if test="position() &gt; 0">,</xsl:if>
												<xsl:value-of select="."/>
											</xsl:for-each>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">
											PERSONALITY TRAITS
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt">
											<xsl:value-of select="interests"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">
											INTERESTS
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt" color="black">
											<xsl:value-of select="speechtendency"/>, <xsl:value-of select="catchphrase"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">
											SPOKEN STYLE
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt" >
											<xsl:value-of select="residence"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">
											RESIDENCE
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt" >
											<xsl:value-of select="location"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">
											LOCATION
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell padding-top="1pt" height="9pt" xsl:use-attribute-sets="bio">
										<fo:block font-size="9pt">
											<xsl:value-of select="region"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-top="1pt" xsl:use-attribute-sets="bio.title">
										<fo:block font-size="6pt">
											REGION
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>

					<fo:block font-size="14pt" font-weight="bold" space-before="5mm" span="all">
						Description:
					</fo:block>
					<xsl:for-each select="description/para">
						<fo:block font-size="9pt" text-indent="5mm" space-after.optimum="2mm"  span="all">
							<xsl:value-of select="."/>
						</fo:block>
					</xsl:for-each>

					<fo:block font-size="14pt" font-weight="bold" span="all">
						Biography:
					</fo:block>
					<xsl:for-each select="bio/para">
						<fo:block font-family="serif" font-size="9pt" text-indent="5mm" space-after.optimum="5mm" span="all">
							<xsl:value-of select="."/>
						</fo:block>
					</xsl:for-each>
				</fo:flow>
			</fo:page-sequence>
		</xsl:if>
		<!-- END BIO Pages -->
	</xsl:template>




<!--
====================================
====================================
	TEMPLATE - CHARACTER NOTES
====================================
====================================-->
	<xsl:template match="notes" mode="bio">
		<!-- BEGIN CHARACTER NOTES Pages -->
		<xsl:if test="count(.//note) &gt; 1">
			<fo:page-sequence master-reference="Portrait 2 Column">
				<xsl:call-template name="page.footer"/>
				<fo:flow flow-name="body" font-size="8pt">
					<fo:block font-size="14pt" font-weight="bold" space-after.optimum="2mm" break-before="page" span="all">
						Notes:
					</fo:block>
					<xsl:for-each select="note">
						<fo:block font-size="12pt" space-after.optimum="2mm" space-before.optimum="5mm">
							<xsl:value-of select="name"/>:
						</fo:block>
						<fo:block font-size="9pt" text-indent="5mm">
							<xsl:call-template name="paragraphlist">
								<xsl:with-param name="tag" select="'value'"/>
							</xsl:call-template>
						</fo:block>
					</xsl:for-each>
				</fo:flow>
			</fo:page-sequence>
		</xsl:if>
		<!-- END CHARACTER NOTES Pages -->
	</xsl:template>


<!--
====================================
====================================
	TEMPLATE - PARAGRAPH LIST
====================================
====================================-->
	<xsl:template name="paragraphlist">
		<xsl:param name="tag"/>
		<xsl:if test="count(./*[name()=$tag]/*[name()='para']) = 0">
			<xsl:value-of select="./*[name()=$tag]"/>
		</xsl:if>
		<xsl:if test="count(./*[name()=$tag]/*[name()='para']) &gt; 0">
			<xsl:for-each select="./*[name()=$tag]/*[name()='para']">
				<xsl:if test="count(./*[name()='table']) &gt; 0">
					<xsl:call-template name="paragraphlist.table"/>
				</xsl:if>
				<xsl:if test="count(./*[name()='table']) = 0">
					<xsl:if test="string-length(.) &gt; 0">
						<xsl:choose>
							<xsl:when test="position() = 1">
								<xsl:value-of select="." />
							</xsl:when>
							<xsl:otherwise>
								<fo:block text-indent="5pt">
									<xsl:value-of select="." />
								</fo:block>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:if>
					<xsl:if test="string-length(.) = 0">
						<fo:block text-indent="5pt">
							&#160;
						</fo:block>
					</xsl:if>
				</xsl:if>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>

<!--
====================================
====================================
	TEMPLATE - PARAGRAPH LIST
====================================
====================================-->
	<xsl:template name="paragraphlist.table">
		<xsl:for-each select="./table">
			<fo:table table-layout="fixed" width="100%" inline-progression-dimension="auto">
				<xsl:for-each select="./table-column">
					<fo:table-column>
						<xsl:attribute name="column-width">
							<xsl:value-of select="@column-width" />
						</xsl:attribute>
					</fo:table-column>
				</xsl:for-each>
				<xsl:for-each select="./table-body">
					<fo:table-body>
						<xsl:for-each select="./table-row">
							<fo:table-row>
								<xsl:for-each select="./table-cell">
									<fo:table-cell>
										<fo:block text-indent="5pt">
											<xsl:value-of select="." />
										</fo:block>
									</fo:table-cell>
								</xsl:for-each>
							</fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				</xsl:for-each>
			</fo:table>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>

