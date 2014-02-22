<cfcomponent displayname="SampleDAO">

	<cffunction name="init" access="public" output="false" returntype="apphome.model.SampleDAO">
		<cfreturn this>
	</cffunction>
	
	<cffunction name="create" access="public" output="false" returntype="boolean">
		<cfargument name="Sample" type="apphome.model.Sample" required="true" />

		<cfset var LOCAL = {} />

		<cftry>

			<cfcatch type="any">
				<cfreturn false />
			</cfcatch>
		</cftry>

		<cfreturn true />
	</cffunction>

	<cffunction name="read" access="public" output="false" returntype="void">
		<cfargument name="Sample" type="apphome.model.Sample" required="true" />

		<cfset var LOCAL = {} />
		<cfset LOCAL.retVal = {} />
		

		<cfset ARGUMENTS.Sample.init(argumentCollection = LOCAL.retVal) />
	</cffunction>

	<cffunction name="update" access="public" output="false" returntype="boolean">
		<cfargument name="Sample" type="apphome.model.Sample" required="true" />

		<cfset var LOCAL = {} />

		<cftry>

			<cfcatch type="any">
				<cfreturn false />
			</cfcatch>
		</cftry>

		<cfreturn true />
	</cffunction>

	<cffunction name="delete" access="public" output="false" returntype="boolean">
		<cfargument name="Sample" type="apphome.model.Sample" required="true" />
		<cfset var LOCAL = {} />
				
		<cftry>

			<cfcatch type="any">
				<cfreturn false />
			</cfcatch>
		</cftry>

		<cfreturn true />
	</cffunction>

	<cffunction name="exists" access="public" output="false" returntype="boolean">
		<cfargument name="Sample" type="apphome.model.Sample" required="true" />

		<cfset var LOCAL = {} />

		<cfif LOCAL.IDExists>
			<cfreturn LOCAL.IDExists />
		<cfelse>
			<cfreturn false />
		</cfif>
	</cffunction>

	<cffunction name="save" access="public" output="false" returntype="boolean">
		<cfargument name="Sample" type="apphome.model.Sample" required="true" />
		
		<cfset LOCAL = {} />
		<cfset LOCAL.success = false />

		<cfif exists(arguments.Sample)>
			<cfset LOCAL.success = update(arguments.Sample) />
		<cfelse>
			<cfset LOCAL.success = create(arguments.Sample) />
		</cfif>
		
		<cfreturn LOCAL.success />
	</cffunction>
	
</cfcomponent>
