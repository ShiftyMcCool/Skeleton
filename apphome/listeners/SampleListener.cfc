<cfcomponent displayname="SampleListener"	extends="MachII.framework.Listener"	output="false">

	<cffunction name="configure" access="public" returntype="void" output="false"
		hint="Configures the listener.">
		<!--- Put custom configuration for this listener here. --->
	</cffunction>

	<cffunction name="getSampleList" output="false" access="public" returntype="array">
		<cfargument name="event" type="MachII.framework.Event" required="true" />

		<cfset LOCAL = {} />
		<cfset LOCAL.SampleService = getProperty("serviceFactory").getBean('SampleService') />

		<cfset LOCAL.Samples = LOCAL.SampleService.getSampleList() />
		
		<cfreturn LOCAL.Samples />
	</cffunction>
	
	<cffunction name="getSample" output="false" access="public" returntype="apphome.model.Sample">
		<cfargument name="event" type="MachII.framework.Event" required="true" />

		<cfset LOCAL = {} />
		<cfset LOCAL.SampleService = getProperty("serviceFactory").getBean('SampleService') />

		<cfset LOCAL.Sample = LOCAL.SampleService.getSample(ID = ARGUMENTS.event.getArg("ID")) />
		
		<cfreturn LOCAL.Sample />
	</cffunction>

	<cffunction name="saveSample" output="false" access="public" returntype="boolean">
		<cfargument name="event" type="MachII.framework.Event" required="true" />

		<cfset LOCAL = {} />
		<cfset LOCAL.SampleService = getProperty("serviceFactory").getBean('SampleService') />
		<cfset LOCAL.Sample = LOCAL.SampleService.getSample(ID = ARGUMENTS.event.getArg("ID")) />

		<cfset LOCAL.Sample.setID(ARGUMENTS.event.getArg("ID")) />
		<cfset LOCAL.Sample.setDescription(ARGUMENTS.event.getArg("Description")) />

		<cfset LOCAL.saveRes = LOCAL.SampleService.saveSample(Sample = LOCAL.Sample) />
		
		<cfreturn LOCAL.saveRes />
	</cffunction>

	<cffunction name="deleteSample" output="false" access="public" returntype="boolean">
		<cfargument name="event" type="MachII.framework.Event" required="true" />

		<cfset LOCAL.SampleService = getProperty("serviceFactory").getBean('SampleService') />
		<cfset LOCAL.Sample = ARGUMENTS.event.getArg("Sample") />

		<cfset LOCAL.DeleteRes = LOCAL.SampleService.deleteSample(LOCAL.Sample) />

		<cfreturn LOCAL.DeleteRes />
	</cffunction>

</cfcomponent>