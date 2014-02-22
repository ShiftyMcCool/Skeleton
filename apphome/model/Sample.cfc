<cfcomponent displayname="Sample" output="false">
	<cfproperty name="ID" type="string" default="" />
	<cfproperty name="Description" type="string" default="" />

	<cfset variables.instance = StructNew() />

	<cffunction name="init" access="public" returntype="apphome.model.Sample" output="false">
		<cfargument name="ID" type="string" required="false" default="" />
		<cfargument name="Description" type="string" required="false" default="" />

		<cfset setID(arguments.ID) />
		<cfset setDescription(arguments.Description) />

		<cfreturn this />
	</cffunction>

	<cffunction name="setID" access="public" returntype="void" output="false">
		<cfargument name="ID" type="string" required="true" />
		<cfset variables.instance.ID = arguments.ID />
	</cffunction>
	<cffunction name="getID" access="public" returntype="string" output="false">
		<cfreturn variables.instance.ID />
	</cffunction>

	<cffunction name="setDescription" access="public" returntype="void" output="false">
		<cfargument name="Description" type="string" required="true" />
		<cfset variables.instance.Description = arguments.Description />
	</cffunction>
	<cffunction name="getDescription" access="public" returntype="string" output="false">
		<cfreturn variables.instance.Description />
	</cffunction>
</cfcomponent>