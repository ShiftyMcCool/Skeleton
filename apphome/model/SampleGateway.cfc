<cfcomponent displayname="SampleGateway" output="false" extends="apphome.model.BaseService">
	<cffunction name="init" access="public" output="false" returntype="apphome.model.SampleGateway">
		<cfreturn this />
	</cffunction>

	<cffunction name="getSampleList" access="public" output="false" returntype="array">
		<cfset var LOCAL = {} />
		<cfset LOCAL.SampleList = [] />

		<cfreturn LOCAL.SampleList />
	</cffunction>
</cfcomponent>