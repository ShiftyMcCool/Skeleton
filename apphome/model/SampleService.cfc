<cfcomponent name="SampleService" output="false" extends="apphome.model.BaseService">

	<cffunction name="init" access="public" output="false" returntype="apphome.model.SampleService">
		<cfargument name="SampleDAO" type="apphome.model.SampleDAO" required="true" />
		<cfargument name="SampleGateway" type="apphome.model.SampleGateway" required="true" />

		<cfset variables.SampleDAO = arguments.SampleDAO />
		<cfset variables.SampleGateway = arguments.SampleGateway />

		<cfreturn this/>
	</cffunction>

	<cffunction name="createSample" access="public" output="false" returntype="apphome.model.Sample">
		<cfargument name="ID" type="numeric" required="false" />
		<cfargument name="Description" type="string" required="false" />
		
		<cfset var Sample = createObject("component","apphome.model.Sample").init(argumentCollection=arguments) />

		<cfreturn Sample />
	</cffunction>

	<cffunction name="getSample" access="public" output="false" returntype="apphome.model.Sample">
		<cfargument name="ID" type="numeric" required="false" />

		<cfset var Sample = createSample(argumentCollection=arguments) />
		<cfset variables.SampleDAO.read(Sample) />

		<cfreturn Sample />
	</cffunction>

	<cffunction name="getSampleList" access="public" output="false" returntype="array">		
		<cfreturn variables.SampleGateway.getSampleList() />
	</cffunction>

	<cffunction name="saveSample" access="public" output="false" returntype="boolean">
		<cfargument name="Sample" type="apphome.model.Sample" required="true" />

		<cfreturn variables.SampleDAO.save(Sample) />
	</cffunction>

	<cffunction name="deleteSample" access="public" output="false" returntype="boolean">
		<cfargument name="Sample" type="apphome.model.Sample" required="true" />

		<cfreturn variables.SampleDAO.delete(ARGUMENTS.Sample) />
	</cffunction>
</cfcomponent>