<cfscript>
	
	include "/models/services/global/settings.cfm";

	set(sendEmailOnError=true);
	set(errorEmailAddress=application.wheels.adminFromEmail);
	set(errorEmailFromAddress=application.wheels.adminFromEmail);
	set(errorEmailToAddress=application.wheels.adminEmail);
	set(environment="development");

</cfscript>
